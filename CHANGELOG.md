## 1.5.3
* Added rules for `ERROR STOP` statements

## 1.5.2
* Fixed bug causing Atom to crash when typing certain statements such as `DIMENSION`

## 1.5.1
* Fixed bug causing Atom to crash when typing `CLASS`

## 1.5.0
* Change `./scoped-properties/language-fortran.cson` to `./settings/language-fortran.cson`
* Removed Modern - Fortran dependency on Punchcard - Fortran
* Overhauled Modern - Fortran rules:
* Improved rules for `WHERE` constructs/statements
* Improved rules for `IF` constructs/statements
* Added rules for kind specifiers following numeric constants, i.e., 1.0_r8
* Added rules for `ENUM` constructs and `ENUMERATOR` statements

## 1.4.0
* Fixed bug in Punchcard - Fortran where function `END` statements would trigger mid word

## 1.3.1
* Added rules allowing do-loops to also close on `CONTINUE` statements

## 1.3.0
* Added more robust rules for handling parentheses
* Fixed bug where words ending in "end" would be treated as `END` statements

## 1.2.3
* Added rules for several new statements to Modern - Fortran
* Added rules for several new constructs to Modern - Fortran
* Updated rules for derived type definitions
* Updated rules for indentations

## 1.2.2
* Added line-continuation operator `&` to Modern - Fortran
* Added rules for basic error checking to several constructs in Modern - Fortran
* Moved several rules from Punchcard - Fortran to Modern - Fortran
* Improved highlighting for numerical constants
* Fixed buy with indenting after single line `WHERE` statements

## 1.2.1
* Added rules for highlighting several additional intrinsic functions/subroutines
* Added highlighting for `CLASS` statement in Modern - Fortran
* Improved rules for highlighting `DATA` statements

## 1.2.0
* Cleaned Punchcard - Fortran rules

## 1.1.0
* Improved rules for `interface` constructs

## 1.0.1
* Updated indentation rules

## 1.0.0
* Updated `CHANGELOG.md`

## 0.3.0 - Third Release
* Derived types definition replaced to be more robust
* first a type definition section followed by a contains section
* More in line with Fortran 2008 standard
* Thanks to Tom Dunn (https://github.com/tomedunn) for this

## 0.2.0 - Second Release
* Added 'concurrent' to list of flow control to be highlighted
* Corrected mistake in README file
