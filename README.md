# language-fortran package

Syntax highlighting for Fortran in Atom. Converted from the [Textmate bundle](https://github.com/textmate/fortran.tmbundle).

The default grammars are `Fortran - Fixed Form` for files with extensions  `f,F,f77,F77,for,FOR,fpp,FPP` and `Fortran - Free Form` for files with extensions `f90,F90,f95,F95,f03,F03,f08,F08`. `Fortran - Fixed Form` is aimed more at fixed form Fortran and `Fortran - Free Form` is aimed more towards free form Fortran.

There are two other grammars that are available, `Fortran - Punchcard` and `Fortran - Modern`, these two grammars are older than the current default langauges and were developed from the original [Textmate bundle](https://github.com/textmate/fortran.tmbundle). `Fortran - Modern` is aimed at free form Fortran code and is fairly complete. `Fortran - Punchcard` is aimed at fixed form Fortran code and does not contain rules for more modern Fortran language elements. To access these additional grammars either select them manually via `ctrl-shift-L` or modify your `init.coffee` file to associate the desired grammar with the desired file extension as described [here](https://discuss.atom.io/t/force-grammar-usage-for-file-extension/15154/6?u=tomedunn).

For example you can associate the `Fortran - Punchcard` grammar with the file extension `.f` files by modifying your `init.coffee` to include the following lines

```coffee
path = require 'path'

atom.workspace.observeTextEditors (editor) ->
    if path.extname(editor.getPath()) in [".f"]
        editor.setGrammar(atom.grammars.grammarForScopeName('source.fortran.punchcard'))
```
