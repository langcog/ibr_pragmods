# Unit tests with RUnit.

library('RUnit')

runTestSuite(defineTestSuite(name='Pragmods',
                             dirs='.',
                             testFileRegexp='test.*\\.R$'))
