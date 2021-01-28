\name{is.number}
\alias{is.number} 

\title{ Check Values }
\description{
  Returns a logical vector describing if a numeric elements 
  is a number.
}
\usage{
is.number(x)
}

\arguments{
  \item{x}{ numeric vector }
}
\details{
  \code{is.number} is \code{TRUE} if the value is numeric or complex
  and is not missing (\code{NA} or \code{NaN}).
}

\examples{
is.number(32)
# [1] TRUE
is.number(matrix(1:20, nrow=2))
#      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
# [1,] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE  TRUE
# [2,] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE  TRUE
is.number(list(matrix(1:20, nrow=2), 1:4))
# [1] TRUE TRUE
is.number('s')
# [1] TRUE
}

\keyword{ utilities }
