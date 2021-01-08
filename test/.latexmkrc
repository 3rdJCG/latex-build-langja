#!/usr/bin/env perl
$pdf_mode         = 3;
$latex            = 'uplatex -kanji=utf8 -no-guess-input-enc -halt-on-error -interaction=nonstopmode -file-line-error --shell-escape';
$latex_silent     = 'uplatex -kanji=utf8 -no-guess-input-enc -halt-on-error -interaction=batchmode --shell-escape';
$bibtex           = 'upbibtex';
$dvipdf           = 'dvipdfmx %O -o %D %S';
$makeindex        = 'mendex %O -o %D %S';