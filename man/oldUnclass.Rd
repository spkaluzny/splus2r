\name{oldUnclass}
\alias{oldUnclass}
\title{Class conversion}
\concept{splus}
\usage{oldUnclass(x)}
\description{the old-style version of function \code{unclass}; it sets \code{oldClass} to \code{NULL}, rather than \code{class}.}

\arguments{
\item{x}{any object.}

}

\value{
unclassed version of input object.
}
\seealso{
\code{\link{oldClass}},\code{\link{unclass}}.}

\examples{
oldUnclass(matrix(1:10))
}
\keyword{utilities}

