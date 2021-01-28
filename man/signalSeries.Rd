\name{signalSeries}
\alias{signalSeries}
\alias{signalSeries-class}
\alias{as.data.frame.signalSeries}
\alias{as.matrix.signalSeries}
\alias{cumsum.signalSeries}
\alias{deltat.signalSeries}
\alias{diff.signalSeries}
\alias{plot.signalSeries}
\title{Constructor function for the signalSeries class}
\concept{series classes}
\usage{signalSeries(data, positions., units, units.position, from=1, by=1)}
\description{Construct a signalSeries object from positions and data, or return an empty signalSeries object.}

\arguments{

\item{by}{amount to skip for positions.}

\item{data}{variable data, which will be converted to a rectangular object with the as.rectangular function.}

\item{from}{starting value of positions.}

\item{positions.}{numeric or numeric sequence object to use as the time/position values.}

\item{units}{units for variable data.}

\item{units.position}{units for positions.}
}

\value{
a \code{signalSeries} object with the given data and positions.
}

\section{S3 METHODS}{
\describe{

\item{as}{s4 style conversion to another class ala as(x, foo) where foo is
any of the following: \code{"character"}, \code{"complex"}, \code{"data.frame"}, \code{"integer"},
\code{"logical"}, \code{"matrix"}, \code{"numeric"}, \code{"vector"}.}

\item{as.data.frame}{convert to a \code{data.frame}.}

\item{as.matrix}{convert to a matrix.}

\item{cumsum}{cumulative summation over series.}

\item{deltat}{samlig intervals of series.}

\item{diff}{differencing operation applied to the series. Usage: diff(x, ...) where the \code{...} are additional arguments
sent directly to the \code{diff} function.}

\item{plot}{plots the series.}

}
}

\details{
%
If no arguments are supplied, the default (empty)
signalSeries object is returned. Otherwise, a signalSeries object is
created with the given positions and data, and units if they are
supplied. As an alternative to supplying the positions directly, they
can be supplied by giving from and by, in which case the positions are
generated as a numeric sequence with the right length to match the
data.
}
\seealso{
\code{\link{numericSequence}}.}

\keyword{classes}

