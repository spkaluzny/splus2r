\name{is.rectangular}
\alias{is.rectangular}
\title{Checks for object rectangularity}
\concept{splus}
\usage{is.rectangular(x)}
\description{Returns TRUE if the input object is rectangular.}

\arguments{
\item{x}{any object.}

}

\value{
logical, returns TRUE if input object is rectangular.
}
\seealso{
\code{\link{as.rectangular}}.}

\examples{
is.rectangular(matrix(1:12, nrow=3))
is.rectangular(list(1:3,2:4))
is.rectangular(as.rectangular(list(1:3,2:4)))
}
\keyword{utilities}

