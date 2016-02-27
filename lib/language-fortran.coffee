{CompositeDisposable, Point, Range} = require 'atom'

module.exports =
  subscriptions: null

  activate: ->
    @subscriptions = new CompositeDisposable
    @subscriptions.add atom.commands.add 'atom-workspace',
      'language-fortran:toggleComment': => @toggleComment()

  deactivate: ->
    @subscriptions.dispose()

  # toggles comments on and off for each selected line in the active buffer
  toggleComment: ->
    commentToken = "C"
    if editor = atom.workspace.getActiveTextEditor()
      if editor.getGrammar().scopeName is 'source.fortran.fixed'
        if buffer = editor.getBuffer()
          for selection in editor.getSelections()
            range = selection.getBufferRange()
            start = range.start
            end = range.end
            startRow = start.row
            endRow = end.row
            for row in [startRow..endRow]
              if @isCommentLine(row)
                @removeCommentToken(buffer, row, commentToken)
              else
                @addCommentToken(buffer, row, commentToken)

  # add a comment token to the start of the given row
  addCommentToken: (buffer, row, token) ->
    rowText = buffer.lineForRow(row)
    rowTextLength = rowText.length
    replaceText = token + rowText
    range = [[row, 0], [row, rowTextLength]]
    buffer.setTextInRange(range, replaceText)

  # removes characters equal to the token length from the start of the given row
  removeCommentToken: (buffer, row, token) ->
    tokenLength = token.length
    rowText = buffer.lineForRow(row)
    rowTextLength = rowText.length
    replaceText = rowText.substring(tokenLength)
    range = [[row, 0], [row, rowTextLength]]
    buffer.setTextInRange(range, replaceText)

  # determines if the line containing the given point is a commented line.
  isCommentLine: (row) ->
    isCommented = false
    point = [row,0]
    editor = atom.workspace.getActiveTextEditor()
    scopes = editor.scopeDescriptorForBufferPosition(point).getScopesArray()
    if scopes.length > 1
      for scope in scopes
        if scope.match(/comment/g)
          isCommented = true
          return isCommented
    return isCommented
