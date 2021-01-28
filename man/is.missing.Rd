\name{is.missing}
\alias{is.missing}
\title{Check for missing values}
\concept{splus}
\usage{is.missing(x)}
\description{Check to see whether the input is either NA or a vector of length 0.}

\arguments{
\item{x}{object to check.}

}

\value{
TRUE if the input is a vector of length 0; \code{is.na(x)} otherwise.
}
\seealso{
\code{\link{anyMissing}}.}

\examples{
is.missing(numeric(0))
is.missing(NA)
is.missing(c(1,2,3,NA,5))
}
\keyword{utilities}

