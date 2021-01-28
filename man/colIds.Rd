\name{colIds}
\alias{colIds}
\alias{colMaxs}
\alias{colMedians}
\alias{colMins}
\alias{colRanges}
\alias{colVars}
\alias{rowIds}
\alias{rowMaxs}
\alias{rowMins}
\alias{rowRanges}
\title{Column and row summary function}
\concept{splus}
\usage{colIds(x, do.NULL=TRUE, prefix="col")
colMaxs(x, na.rm = FALSE, dims = 1, n = NULL)
colMedians(x, na.rm=FALSE)
colMins(x, na.rm = FALSE, dims = 1, n = NULL)
colRanges(x, na.rm = FALSE, dims = 1, n = NULL)
colVars(x, na.rm=FALSE, dims = 1, unbiased = TRUE,
        SumSquares = FALSE, weights = NULL, freq = NULL, n = NULL)
rowIds(x, do.NULL=TRUE, prefix="row")
rowMaxs(x, na.rm = FALSE, dims = 1, n = NULL)
rowMins(x, na.rm = FALSE, dims = 1, n = NULL)
rowRanges(x, na.rm = FALSE, dims = 1, n = NULL)
}
\description{Summarizes the columns or rows of a rectangular object.}

\arguments{
\item{x}{rectangular input object such as a matrix or data.frame.}

\item{dims}{if \code{x} has dimension higher than \code{2},
\code{dims} determines what dimensions are summarized.}

\item{do.NULL}{logical for rowIds or colIds.}

\item{n}{number of rows; treat \code{x} as a matrix with \code{n} rows.}

\item{na.rm}{logical, NA values are removed if TRUE.}

\item{prefix}{character string preface for column IDs returned by rowIds or colIds.}

\item{unbiased}{logical, unbiased variance estimates returned if \code{TRUE}.}
\item{SumSquares}{logical, sums of squares are returned if \code{TRUE}.}
\item{weights, freq}{unsupported, here for backwards compatibility.}
}

\value{
corresponding summary by row or by column.
}

\seealso{
See 'aggregate' package for alternative definitions of colStdevs, colVars, rowStdevs 
and rowVars functions.
}


\examples{
## create a matrix, add dimensions, and obtain
## various summaries
x <- matrix(sin(1:20), nrow=4)
dimnames(x) <- list(c("a","b","c","d"), paste("col", 1:5))
colIds(x)
colMaxs(x)
colMedians(x)
colMins(x)
colRanges(x)
rowIds(x)
rowMaxs(x)
rowMins(x)
rowRanges(x)
}
\keyword{utilities}
