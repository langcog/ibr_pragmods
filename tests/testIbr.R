## Test of IBR.  Currently not very thorough: only checks the last agent in a
## few IBR sequences.

library(RUnit)

setwd('..')
source('tests.R')
setwd('tests')

TestStillerNoscales = function() {
  checkEqualsNumeric(IBR(stiller.noscales)[[4]],
                     matrix(c(0,0,1,0,1,0,0,1,0,1,0,0), byrow=T, nrow=4))
}

TestScalars = function() {
  checkEqualsNumeric(IBR(scalars)[[3]],
                     matrix(c(1,0,0,0,1,0,0,0,1), byrow=T, nrow=4))
}

TestDivision() = function() {
  checkEqualsNumeric(IBR(hornutil, costs=horncosts),
                     matrix(c(1,0,0,1), byrow=T, nrow=2))
}

TestDivisionPriors() = function() {
  checkEqualsNumeric(IBR(hornutil, costs=horncosts, prior=c(0.2,0.8),
                         matrix(c(1,0,1,99), byrow=T, nrow=2)))
}

TestMatrix7() = function() {
  checkEqualsNumeric(IBR(m7),
                     matrix(c(0,0,1,0,0,0,0,1,0,1,0,0,1,0,0,0),
                            byrow=T, nrow=4))
}
