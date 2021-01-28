\name{is.orderable}
\alias{is.orderable}

\title{ If a value can be ordered }
\description{
  \code{is.orderable(x)} returns \code{!is.na()}.
}
\usage{
is.orderable(x)
}

\arguments{
  \item{x}{ object to be tested. }
}
\details{
  \code{x} should not be a list; in that case the behavior currently
  differs between S-PLUS and R.
}
\value{
  \code{is.orderable} returns a logical vector of the same length
  as \code{x}.
}

\seealso{
  \code{\link{is.na}}
}

\examples{
x <- c(1, 4, NA, 0, 5)
is.orderable(x)
# [1]  TRUE  TRUE FALSE  TRUE  TRUE
}
\keyword{ manip }
