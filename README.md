# xskak — An extention to the package skak for chess typesetting

Ulrike Fischer 2006-2019

![Version: 1.61](https://img.shields.io/badge/current_version-1.61-blue.svg?style=flat-square)
![Date: 2019-07-22](https://img.shields.io/badge/date-2019--07--22-blue.svg?style=flat-square)
[![License: LPPL1.3c ](https://img.shields.io/badge/license-LPPL1.3c-blue.svg?style=flat-square)](https://ctan.org/license/lppl1.3c)



## INSTALLATION

Get xskak with the package manager of your tex system. If you want to install manually
download xskak.dtx and xskak.ins and TeX/LaTeX on xskak.ins to unpack the dtx.
Put the three extracted files in tex/latex/xskak/ and update  the filename database.

The dtx-file doesn't contain any documentation.
So running LaTeX on it makes no sense!

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
