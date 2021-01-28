\name{numericSequence}
\alias{numericSequence}
\alias{numericSequence-class}
\title{Constructor for numericSequence Class}
\concept{splus series}
\usage{numericSequence(from, to, by, length.)}
\description{Constructor function for numericSequence objects. At least three of the four
arguments must be supplied, unless the function is called with no arguments.}

\arguments{
\item{from}{start of the sequence.}

\item{to}{end of the sequence.}

\item{by}{increment for the sequence.}

\item{length.}{length of the sequence, a non-negative integer.}

}

\value{
a numericSequence object with properties given by the arguments, or the default numericSequence if no arguments are supplied.
}

\section{S3 METHODS}{
\describe{

\item{S4}{supported S4 methods include: \code{Math}, \code{Math2}, \code{Ops}, \code{Summary}, \code{[}, \code{[[}, \code{duplicated}, \code{is.na},
\code{length}, \code{match}, \code{mean}, \code{median}, \code{quantile}, \code{show}, \code{sort},
\code{summary}, \code{unique}, \code{which.na}. There are also \code{[} and \code{[[} S4 style replacment methods available.}

\item{as}{s4 style conversion methods ala \code{as(x, foo)} where \code{foo} is one of the following conversion classes:
\code{"character"}, \code{"integer"}, \code{"numeric"}.}

}
}

\seealso{
\code{\link{seriesData}}, \code{\link{asSeriesData}}, \code{\link{seriesDataNew}}, \code{\link{seriesDataValid}}, \code{\link{signalSeries}}, \code{\link{as.data.frame.signalSeries}}, \code{\link{as.matrix.signalSeries}}, \code{\link{cumsum.signalSeries}}, \code{\link{deltat.signalSeries}}, \code{\link{diff.signalSeries}}, \code{\link{plot.signalSeries}}.}

\keyword{ts}

