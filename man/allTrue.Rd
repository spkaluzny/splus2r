\name{allTrue}
\alias{allTrue}
\title{Test whether all expressions return TRUE}
\description{
  This is typically used to combine multiple \code{\link{all.equal}} tests
  into a single test, in a test file called by \code{\link{do.test}}.
}
\usage{
allTrue(...)
}
\arguments{
  \item{\dots}{Each argument is typically a call to \code{do.test} or
  another expression that returns a logical value.}
}
\details{
  This is intended for use in test run by \code{\link{do.test}}.
  A typical test may contain lines that create one or more
  objects, followed by commands to check that those objects have
  the expected structure and/or that calculations were correct.
  By using \code{allTrue}, the tests can all be combined into the
  same expression that created the objects, so that if an error
  occurs it is easier to see where it occured.
}
\value{
  if all inputs are \code{TRUE} the value is \code{TRUE}.
  Otherwise a list indicating which arguments did not return
  \code{TRUE}, containing the actual values.
}
\author{Tim Hesterberg}
\seealso{
  \code{\link{all.equal}},
  \code{\link{do.test}},
  \code{\link{expectStop}},
  \code{\link{expectWarnings}},
  \code{\link{identical}}.
}
\examples{
# This is the type of expression that may be found in a test file
# to be run by do.test -- inside {} are lines that create one or
# more objects, followed by multiple tests (inside allTrue) that
# check those objects.
{
  y <- rnorm(30)
  x <- matrix(rnorm(60), ncol=2)
  fit <- lm(y~x)
  allTrue(# are important components included?
          all(is.element(c("coefficients", "residuals", "effects", "rank",
                           "fitted.values", "assign", "df.residual", "call"),
                         names(fit))),
          {
            # do coefficients match the algebraic form?
            # The algebraic form is inaccurate, so allow greater tolerance
            X <- cbind(1, x)
            all.equal(unname(fit$coefficients),
                      drop(solve( t(X) \%*\% X, t(X) \%*\% y)),
                      tol = 1e-5)
          },
          # are residuals computed correctly?
          all.equal(fit$residuals, y - X \%*\% fit$coefficients))
}
# The second test uses 'unname' to remove names and 'drop' to change a
# matrix to a vector, so the test should pass.
# The third test fails because fit$residuals is a vector with names
# while the \%*\% calculation returns a matrix.
}
\keyword{ utilities}
