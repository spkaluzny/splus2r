\name{numCols}
\alias{numCols}
\alias{numRows}
\title{Object dimensions}
\concept{splus}
\usage{numCols(x)
numRows(x)}
\description{Returns number of rows or number of columns of rectangular input object.}

\arguments{
\item{x}{rectangular object.}

}

\value{
the number of rows or columns of the input object.
}
\seealso{
\code{\link{as.data.frame}},\code{\link{matrix}},\code{\link{Subscript}},\code{\link{nrow}},\code{\link{dimnames}}.}

\examples{
x <- matrix(1:12, nrow=3)
numCols(x)
numRows(x)
}
\keyword{utilities}

