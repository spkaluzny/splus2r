\name{deparseText}
\alias{deparseText}
\title{Deparses input argument}
\concept{splus}
\usage{deparseText(expr, maxchars=30)}
\description{Deparse the argument into a single string, with at most \code{maxchars} characters. New lines are turned into blanks, and truncated
results end in "....".}

\arguments{
\item{expr}{any expression.}
\item{maxchars}{maximum number of characters returned}
}

\value{
deparsed character string.
}

\examples{
deparseText(args(lm), maxchars=20)
}
\keyword{utilities}

