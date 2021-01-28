\name{is.inf}
\alias{is.inf}

\title{ Infinite }
\description{
  \code{is.inf} returns a vector of the same length as the input object, 
  indicating which elements are infinite (not missing). 
}
\usage{
  is.inf(x)
}

\arguments{
  \item{x}{ object to be tested }
}
\details{
  This calls \code{\link{is.infinite}}.

  This returns a vector of the same length as \code{x}; the \code{j}th
  element is \code{TRUE} if \code{x[j]} is infinite
  (i.e., equal to one of \code{Inf} or \code{-Inf}). 
  This will be \code{FALSE} if \code{x} is not numeric or complex.
  Complex numbers are infinite if either the real and imaginary part is.
}

\seealso{
  \code{\link{is.infinite}}
}

\examples{
is.inf(Inf)
# [1] TRUE
is.inf(NA)
# [1] FALSE
is.inf(1)
# [1] FALSE
}

\keyword{ utilities }
