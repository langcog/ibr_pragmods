#!/usr/bin/env R

source('util.R')
source('agents.R')

odd.man.out = matrix(
  c(1,   1,  0,
    1,   0,  1,
    0,  1,   1), byrow=T, nrow=3,
  dimname=list(
    c('r1', 'r2', 'r3'), # Row names; referents.
    c('hat', 'glasses','mustache'))) # Column names; messages.

ImageViz(odd.man.out)
IBR(odd.man.out)
FG(odd.man.out)
L(S(L(S(L(S(odd.man.out))))))
