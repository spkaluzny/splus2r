\name{do.test}
\alias{do.test}
\title{
  Test Functions and Expressions - for automated testing
}
\description{
  Expressions are parsed and evaluated from \code{file}.
  Each expression should evaluate to a logical \code{TRUE}.  Otherwise,
  \code{do.test()} prints the expression and its value.
}
\usage{
do.test(file, verbose=FALSE, strict=FALSE, local=FALSE, check)
}
\arguments{
\item{file}{
  a file or connection containing code to test.
}
\item{verbose}{
  logical flag. If \code{TRUE}, all expressions are printed, not just
  those that fail.  Regardless of this flag, the value is also printed
  for failures.
}
\item{strict}{
  logical flag.  If \code{TRUE}, any validity
  failures cause an error; that is, you get to debug after the first failed
  assertion.
}
\item{local}{
  logical flag controlling where the evaluation
  takes place: by default (\code{local=FALSE}),
  in the environment that called \code{do.test}, typically
  the global environment, (objects created remain there after
  \code{do.test} is finished).
  \code{local=TRUE}, causes \code{do.test} to create and work
  in a new environment.
}
\item{check}{
  an unevaluated expression. If \code{check}is supplied,
  \code{do.test}evaluates
  this expression (it should be given via \code{Quote()}) between each
  parse and evaluation.  (This is for when you need to check some global
  information.)
}
}
\details{
  A test file typically contains a sequence of expressions to test
  different aspects of a function or set of functions, including
  testing that each input argument is handled appropriately,
  error handling,
  the output has the expected structure,
  correct output under a number of combinations of inputs,
  and error handling (warning and stop invoked when appropriate and
  with appropriate messages).  Each expression may contain multiple
  lines grouped using \code{\{\}},
  where early lines may do computations and the last line
  checks for expected results, usually using \code{\link{all.equal}}.

  Some expressions may be included that aren't intended to test anything
  by finishing them with \code{TRUE}, e.g. to read data:
  \code{\{read.table("data.txt"); TRUE\}}
  or to remove objects at the end of a test file:
  \code{\{rm(a, b, x, y); TRUE\}}.

  We recommend including comments inside expressions to indicate
  the purpose of each test; then if errors occur the comments are
  printed too.

  To compare just numbers, not names or matrix dimensions, functions
  \code{\link{unname}} and \code{\link{drop}} are useful.

  To exclude
  certain components or attributes from the comparison the function
  \code{all.equal.excluding} is useful.  This is defined in the examples
  below.

  Each test should run silently if everything is working correctly;
  there should be nothing printed.  \code{\link{expectWarnings}} can
  be used to intercept \code{\link{warning}} statements.
}
\value{
NULL
}
\seealso{
  \code{\link{all.equal}},
  \code{\link{allTrue}},
  \code{\link{drop}},
  \code{\link{expectStop}},
  \code{\link{expectWarnings}},
  \code{\link{identical}},
  \code{\link{Quote}},
  \code{\link{unname}}
}
\examples{
\dontrun{
# Create a toy test file, and run it
cat('{all.equal(24/8, 3)}',
    '{all.equal(5, 6)}',      # this one will fail
    'expectWarnings( { # Test subscript replacement ',
    '  x <- data.frame(a=1:3,b=2:4)',
    '  x[,3] <- x',
    '  all.equal(ncol(x), 3)',
    '}, expected = "provided 2 variables to replace 1 var")',
    'expectStop(lm(5), expected = "invalid formula")',
    '{ rm(x) ; TRUE }',       # cleanup at end of test
    sep="\n", file = "testfile.t")
do.test("testfile.t")
## ------- Test file: testfile.t ---------
## {all.equal(5, 6)}
## [1] "Mean relative difference: 0.2"
#
# The test that fails is printed, with the results of the test.
# In R 2.6.1 the subscript replacement test above also fails
# (bug reported 14 Jan 2008), resulting in the additional printout:
## expectWarnings( {
##   x <- data.frame(a=1:3,b=2:4)
##   x[,3] <- x
##   all.equal(ncol(x), 3)
## }, expected = "provided 2 variables to replace 1 var")
## $`Test result`
## [1] "Mean relative  difference: 0.25"
}

# This function is useful in some tests:
all.equal.excluding <- function(x, y, ..., excluding=NULL, attrs=NULL){
  # Like all.equal, but exclude components in `excluding',
  #   and excluding attributes named in `attrs'.
  #
  # `excluding' and `attrs' should be character, names of components 
  #   and attributes.
  # 
  # For example:
  #   all.equal.excluding(obj1, obj2, excluding = c("call", "x"))
  for(i in intersect(names(x), excluding)) x[[i]] <- NULL
  for(i in intersect(names(y), excluding)) y[[i]] <- NULL
  for(i in intersect(names(attributes(x)), attrs)) attr(x,i) <- NULL
  for(i in intersect(names(attributes(y)), attrs)) attr(y,i) <- NULL
  all.equal(x,y, ...)
}
# Test if two objects are the same except for "call" and "x":
data <- data.frame(x = 1:20, y = exp(1:20/20))
fit1 <- lm(y ~ x, data = data, x=TRUE)
fit2 <- update(fit1, x=)
all.equal.excluding(fit1, fit2, excluding = c("call", "x"))
}
\keyword{utilities}
% docclass is function
