\name{seriesData}
\alias{seriesData}
\alias{[<-.seriesData}
\alias{seriesData<-}
\title{Access Data Of series Objects}
\concept{splus series}
\usage{seriesData(object)}
\description{Access the data slot of series objects.}

\arguments{
\item{object}{object with which to find data.}

}

\value{
the data slot of object.
}

\section{S3 METHODS}{
\describe{

\item{[<-}{single level data replacement method.

Usage: x[1:4] <- 1:4)}

}
}

\seealso{
\code{\link{numericSequence}}, \code{\link{asSeriesData}}, \code{\link{seriesDataNew}}, \code{\link{seriesDataValid}}, \code{\link{signalSeries}}, \code{\link{as.data.frame.signalSeries}}, \code{\link{as.matrix.signalSeries}}, \code{\link{cumsum.signalSeries}}, \code{\link{deltat.signalSeries}}, \code{\link{diff.signalSeries}}, \code{\link{plot.signalSeries}}.}

\keyword{ts}

