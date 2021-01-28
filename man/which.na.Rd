\name{which.na}
\alias{which.na}
\title{Determine Which Values are Missing Values}
\concept{splus}
\usage{which.na(x)}
\description{Returns an integer vector describing which values in the
input vector, if any, are missing.}

\arguments{
\item{x}{an R object, which should be of mode \code{"logical"}, \code{"numeric"}, or \code{"complex"}.}

}

\value{
an integer vector describing which values in the
input vector, if any, are missing.
}
\seealso{
\code{\link{is.na}}.}

\examples{
## A non-zero number divided by zero creates 
## infinity, zero over zero creates a NaN 
weird.values <- c(1/0, -20.9/0, 0/0, NA)

## Produces: 3 4. In this example, the which.na 
## expression and the subscript expression 
## involving is.na should return the same value 
which.na(weird.values)
seq(along=weird.values)[is.na(weird.values)]
}
\keyword{utilities}

