\name{peaks}
\alias{peaks}
\title{Local maxima}
\concept{splus}
\usage{peaks(x, span=3, strict=TRUE)}
\description{Finds the local maxima in a vector, or time series, or in each column of a matrix.}

\arguments{
\item{x}{vector or matrix.}
\item{span}{a peak is defined as an element in a sequence which is greater than all other elements within a window of width span centered at that element. The default value is 3, meaning that a peak is bigger than both of its neighbors. Default: 3.}

\item{strict}{logical flag: if TRUE, an element must be strictly greater than all other values in its window to be considered a peak. Default: TRUE.}
}

\value{
an object like x of logical values. Values that are TRUE correspond to local peaks in the data.
}
\seealso{
\code{\link{max}}, \code{\link{cummax}}, \code{\link{pmax}}.}

\examples{
x <- as.vector(sunspots)
z <- peaks(x, span=51)
plot(x, type="l")
abline(v=which(z), col="red", lty="dashed")
}
\keyword{utilities}

