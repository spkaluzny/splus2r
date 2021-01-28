\name{expectStop}
\alias{expectStop}
\alias{expectWarnings}
\title{Test whether expected stop() or warning() messages are produced.}
\description{
  These functions are for use in automated testing using \code{do.test},
  to test whether function give specified
  \code{stop} and \code{warning} messages.
}
\usage{
expectStop(expr, expected = NULL)
expectWarnings(expr, expected)
}
\arguments{
  \item{expr}{ An expression, that should result in a call to \code{stop()}
  or \code{warning()}.}
  \item{expected}{ \code{NULL}, or a character string
    containing (part of) the message
    expected from \code{stop}.  For \code{expectWarnings} a vector of
  character strings containing (parts of) all expected warnings.}
}
\details{
  \code{expectStop} is useful for checking error checking; that a function
  stops when it should, and gives the right message.
  For example, this may be in a file called by do.test:
\preformatted{{
  expectStop(var(1:5, 1:4),
             if(is.R()) "incompatible"
             else "x and y must have the same number of")
}
}
The function returns \code{TRUE} if
\itemize{
\item a stop() occurs, and
\item the error message is expected.
}
Otherwise it returns appropriate messages.

\code{expectStop} intercepts the error.
Execution continues, and assignments made earlier are committed.

Similarly, \code{expectWarnings} is useful to check that a function
gives appropriate warnings.
For example, this may be in a file called by do.test:
\preformatted{
expectWarnings(
  {
    object1 <- (code generating warning messages);
    object2 <- (code generating possibly other warning messages);
    all.equal(object1, object2)
  },
  c("expected warning 1",
    "expected warning 2"))
}
The function returns \code{TRUE} if
\itemize{
\item expr evaluates to \code{TRUE}; and
\item each warning message produced by evaluating expr contains as a
     substring an element of expected, and each element of expected
     is a substring of at least one of the produced warning messages.
}
Otherwise it returns a list with components describing the test failures.
Normal printing of warning messages is suppressed.

It is possible to test for warnings and a stop in a single expression,
by nesting calls to the two functions.
}
\value{
  If all tests pass, then \code{TRUE}.
  Otherwise \code{expectStop} returns character strings describing the
  failure, while \code{expectWarnings} returns a list with one or
  more of the following components:

  \item{'Test result'}{the value (if not \code{TRUE}) returned by
  evaluating \code{expr}.}

  \item{'Unexpected warnings'}{character vector
  of actual warning messages that were not listed in \code{expected}.}

  \item{'Warnings expected but not found'}{character vector
  of messages in \code{expected} that were not produced.}

}
\author{Tim Hesterberg}
\seealso{
  \code{\link{do.test}}
}
\examples{
# Expressions like the following would typically be included in a file
# that is called by do.test

expectStop(lm(5), expected = "invalid formula")

expectStop(cov2cor( matrix(2:1) ),
           expected = "'V' is not a square numeric matrix")

expectWarnings( # Test subscript replacement; should discard extra
                # column and give a warning
  {
    x <- data.frame(a=1:3,b=2:4)
    x[,3] <- x
    all.equal(ncol(x), 3)
  },
  expected = "provided 2 variables to replace 1 var")

# Test for a warning and stop together:
{
  f <- function(x){
    warning("a warning")
    stop("a stop")
  }
  expectStop( expectWarnings( f(3), expected = "a warning"),
              expected = "a stop")
}
# The definition of f and the call to expectStop are included here
# within {} because that is how they would typically be grouped in
# a file that is called by do.test.  Also note that f has been saved
# (the assignment of f is committed, rather than aborted).
}
\keyword{ utilities}
\keyword{ error }
