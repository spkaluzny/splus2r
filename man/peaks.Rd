\name{peaks}
\alias{peaks}
\title{Local maxima}
\concept{splus}
\usage{peaks(x, span=3, strict=TRUE, endbehavior=0)}
\description{Finds the local maxima in a vector, or time series, or in each column of a matrix.}

\arguments{
\item{x}{vector or matrix.}
\item{span}{a peak is defined as an element in a sequence which is greater than all other elements within a window of width span centered at that element. The default value is 3, meaning that a peak is bigger than both of its neighbors. Default: 3.}

\item{strict}{logical flag: if TRUE, an element must be strictly greater than all other values in its window to be considered a peak. Default: TRUE.}
\item{endbehavior}{
a value of 0, 1 or 2 that determines how peaks are computed within
a \code{halfwidth} (= \code{floor(span/2)}) of the ends of the sequence.
A value of 0 means no value within \code{halfwidth} of the start or end
can be considered a peak.
A value of 1 means maximum values within \code{halfwidth} of the start or end
can be considered a peak.
A value of 2 returns \code{NA} for the values within \code{halfwidth}
of the start or end.
The default is \code{endbehavior=0)}.
}
}
\value{
an object like \code{x} of logical values.
Values that are TRUE correspond to local peaks in the data.
}
\note{
The value of \code{endbehavior} acts as follows:
0 is as if the series had runs of \code{halfwidth} values of \code{Inf}
attached to either end,
1 is as if there were runs of \code{halfwidth} values of \code{-Inf} attached,
and 2 is as if there were runs of\code{halfwidth} values of \code{NA} attached.
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

