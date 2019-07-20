# xskak --- An extention to the package skak for chess typesetting

Packageversion: 1.6 
Packagedate: 2019-07-20
Ulrike Fischer 2006-2019

## LICENSE
LaTeX Project Public License

## CONTENTS AND INSTALLATION

- README.md (this file)
- xskak.dtx
- xskak.ins
- xskak.tex, xskak.pdf (the main documentation file)
- some files needed to typeset the documentation

Run TeX/LaTeX on xskak.ins to unpack the dtx.

Put the three extracted files in tex/latex/xskak/.

The dtx-file doesn't contain any documentation.
So running LaTeX on it makes no sense!

Put the other files  in
 doc/latex/xskak/

Update the filename database

## DOCUMENTATION

xskak.pdf. 

## DESCRIPTION

The main point of xskak is to save informations about a chess game
for later use e.g. to loop through a game to make an animated board.
It also extend the input that the parsing commands can handle and
offer an interface to define and switch between indefinite levels
of styles.


## REQUIREMENTS
xskak uses some primitives of e\TeX. It needs version 1.4 of skak,
a recent version of chessfss and xkeyval, version 1.5 of chessboard (which in turns
needs xifthen and pgf).
