\name{subscript2d}
\alias{subscript2d}
\alias{subscript2dDataFrame}
\alias{subscript2d.default}
\alias{subscript2dMatrix}
\title{Uniform Rectangular Data Subscripting Function}
\concept{splus}
\usage{subscript2d(x,i,j)
subscript2dMatrix(x,i,j)
subscript2dDataFrame(x,i,j)}
\description{subscript2d is for subscripting matrices and data frames.}

\arguments{
\item{x}{a matrix or data frame}
\item{i}{first (row) subscript.}

\item{j}{second (column) subscript.}
}

\value{
\code{subscript2d(x,i,j)} is like \code{x[i,j,drop=F]},
except that it allows \code{x[,1]} (for example) for atomic vectors as well,
and it always returns an object of the same class as \code{x}
(that is, it does not support a drop argument).
}
\seealso{
\code{\link{as.data.frame}}, \code{\link{matrix}}.}

\examples{
x <- 1:10
subscript2d(x,3,1)
subscript2d(data.frame(x),3,1)
subscript2d(matrix(x),3,1)
}
\keyword{utilities}

