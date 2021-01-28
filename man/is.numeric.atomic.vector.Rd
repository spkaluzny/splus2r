\name{isNumericAtomicVector}
\alias{isNumericAtomicVector}
\title{Tests whether an object is a vector or not}
\concept{utilities}
\usage{isNumericAtomicVector(x)}
\description{The \code{is.vector} function returns a \code{FALSE}
value in some cases where intuitively one might
expect a \code{TRUE} value to be returned. For example,
\code{is.vector(z)} returns \code{FALSE} for each of the
following:
\describe{
\item{i}{\code{z <- 1:3;names(z) <- 1:3}}

\item{ii}{\code{z <- matrix(1:3, nrow=1)}}

\item{iii}{\code{z <- matrix(1:3, ncol=1)}}}

These results are not necessarily incorrect, they are
just one interpretion of the definition of a vector.
Contrarily, the \code{isNumericAtomicVector(z)} function returns
\code{TRUE} for each of the above examples. Thus,
\code{isNumericAtomicVector} expands the basic definition of a
vector to allow matrices containing a single row
or column and named vectors. Also, unlike \code{is.vector},
\code{isNumericAtomicVector} returns \code{FALSE} for objects of class \code{list}.}

\arguments{
\item{x}{an object of arbitrary class.}

}

\value{
a vector of character strings containing the result. The length
of this vector is equal to \code{length(x)}.
}

\examples{
## cases where isNumericAtomicVector returns 
## TRUE 
z <- 1:3;names(z) <- letters[1:3]
isNumericAtomicVector(z)
isNumericAtomicVector(matrix(1:3, nrow=1))
isNumericAtomicVector(matrix(1:3, ncol=1))
isNumericAtomicVector(1:5)
isNumericAtomicVector(letters)

## cases where isNumericAtomicVector returns 
## FALSE 
isNumericAtomicVector(list(1:3))
isNumericAtomicVector(data.frame(1:3,2:4))
isNumericAtomicVector(matrix(1:12, nrow=4))
}
\keyword{utilities}

