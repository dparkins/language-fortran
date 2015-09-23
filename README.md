# language-fortran package

Syntax highlighting for Fortran in Atom. Converted from the [Textmate bundle](https://github.com/textmate/fortran.tmbundle).

The default grammars are `Fortran - Punchcard` for files with extensions  `f,F,f77,F77,for,FOR,fpp,FPP` and `Fortran - Modern` for files with extensions `f90,F90,f95,F95,f03,F03,f08,F08`. `Fortran - Punchcard` is aimed more at fixed form Fortran and is largely unaltered from the original [Textmate bundle](https://github.com/textmate/fortran.tmbundle) which means it doesn't contain rules for more modern Fortran constructs. `Fortran - Modern` is aimed more towards free form Fortran and contains rules for the most recent Fortran standard.

There are two other grammars that are available, `Fortran - Fixed Form` and `Fortran - Free Form`, which are still in development and may eventually replace the other two. As their names imply they are designed for fixed form and free form Fortran and both are designed to be consistent with the most recent Fortran standards. To access these additional grammars either select them manually via `ctrl-shift-L` or modify your `init.coffee` file to associate the desired grammar with the desired file extension as described [here](https://discuss.atom.io/t/force-grammar-usage-for-file-extension/15154/6?u=tomedunn).

For example you can associate the `Fortran - Fixed` grammar with the file extension `.f` files by modifying your `init.coffee` to include the following lines

```coffee
path = require 'path'

atom.workspace.observeTextEditors (editor) ->
    if path.extname(editor.getPath()) in [".f"]
        editor.setGrammar(atom.grammars.grammarForScopeName('source.fortran.fixed'))
```
