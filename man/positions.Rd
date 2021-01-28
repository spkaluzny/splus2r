\name{positions}
\alias{positions}
\title{Positions of signalSeries objects}
\concept{splus}
\usage{positions(object)}
\description{Access the positions of series objects.}

\arguments{
\item{object}{an object of class \code{signalSeries}.}

}

\value{
the positions associated with the input time series: an object of class \code{numericSequence}.
}
\seealso{
\code{\link{seriesData}}, \code{\link{signalSeries}}.}

\examples{
x <- signalSeries(1:10, from=pi, by=0.1)
positions(x)
}
\keyword{utilities}

