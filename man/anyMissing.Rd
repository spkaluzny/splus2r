\name{anyMissing}
\alias{anyMissing}
\title{Returns TRUE if missing values are round, otherwise FALSE}
\concept{splus}
\usage{anyMissing(x)}
\description{Detection of missing values.}

\arguments{
\item{x}{any object (though not all are currently supported).}

}

\value{
logical, TRUE is missing values are detected.
}
\seealso{
\code{\link{is.missing}}, \code{\link{which.na}}.}

\examples{
anyMissing(1:5)
anyMissing(c(1, NA, 2))
anyMissing(list(a=1:3, b=NA))
anyMissing(data.frame(a=1:3, b=c(NA, 5:6)))
}
\keyword{utilities}

