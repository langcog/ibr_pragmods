ibr_pragmods
============

Pragmatics models inspired by the Iterated Best Response Model. From [this google code SVN repository](http://code.google.com/p/pragmods).

## Overview ##

This is an R toolkit for studying signaling systems for grounded language understanding. The code provides:

- A variety of speaker and listener agents (and flexible tools for defining new ones).
- Iterators for specifying the Iterated Best Response model and its variants.
- Tools for exhaustively exploring large semantic spaces to find empirical differences between systems.
- Tools for generating experimental stimuli for reference games.

## Basic examples ##

### Scalar implicature ###

To run classical IBR (as in Jäger 2012) on a standard scalar-implicatures case:

```
source('ibr.R')

scalars = matrix(
  c(1,   0,   0,
    0,   1,   0,
    0,   1,   1), byrow=T, nrow=3,
  dimname=list(
    c('w_no', 'w_somenotall', 'w_all'), # Row names; worlds.
    c('NO', 'SOME', 'ALL'))) # Column names; messages.

IBR(scalars)
```

For this example, this is equivalent to

```
Sstar(Lstar(S0(scalars), scalars))
```

though IBR allows iteration to arbitrary depth (until convergence, which is guaranteed).


## Frank and Goodman 2012 example ##

```
## Scenario from figure 1A:
fg = matrix(
  c(1,0,1,0,
    1,0,0,1,
    0,1,1,0), byrow=T, nrow=3,
  dimnames=list(
    c('r_bs','r_bc','r_gs'), # Row names; objects.
    c('blue','green','square','circle')) # Column names; messages.
  )

## Approximate from figure 1C:
bets = c(20,40,38)
prior = bets/sum(bets)
FG(fg, prior=prior)
```

This is equivalent to 

```
Lbayes(S(L(S0(fg), sem=fg)), sem=fg, prior=prior)
```


# Contributors #

[http://www.stanford.edu/~mcfrank/ Michael C. Frank], 
[http://www.stanford.edu/~ngoodman/ Noah D. Goodman], and
[http://www.stanford.edu/~cgpotts/ Christopher Potts]


# Core references #

Frank, Michael C. and Goodman, Noah D.. 2012. Predicting pragmatic reasoning in language games. _Science_ 336(6084): 998.

Franke, Michael. 2009. _Signal to Act: Game Theory in Pragmatics_. Institute for Logic, Language and Computation, University of Amsterdam.

Jäger, Gerhard. 2012. Game theory in semantics and pragmatics. In Claudia Maienborn, Klaus von Heusinger, and Paul Portner, eds., _Semantics: An International Handbook of Natural Language Meaning_. Berlin: Mouton de Gruyter.

Lewis, David. 1969. _Convention_. Cambridge, MA: Harvard University Press. Reprinted 2002 by Blackwell.