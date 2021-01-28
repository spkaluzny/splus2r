\name{as.rectangular}
\alias{as.rectangular}
\title{Covnert to rectangular object}
\concept{splus}
\description{Rectangular data objects include matrices, data frames, and atomic vectors.}

\arguments{
\item{x}{object to be converted to rectangular data.}
\item{i}{first (row) subscript}

\item{j}{second (column) subscript.}
}

\value{
\code{as.rectangular(x)} returns \code{x} if \code{x} is already rectangular, or \code{as.data.frame(x)} if it is not.
}
\seealso{
\code{\link{is.rectangular}}.}

\examples{
## 
as.rectangular(list(a=1:10, b=11:20))
}
\keyword{utilities}

