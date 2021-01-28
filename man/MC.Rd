\name{MC}
\alias{MC}
\title{ Make Closure for functions }
\description{
  MC makes closures for defining functions in a function.
}
\usage{
MC(f, env=NULL)
}

\arguments{
  \item{f}{ function }
  \item{env}{ a list containing functions to be used in f }
}
\details{
  MC declares functions to be used in f.  When f is defined inside of
  a function, say fun, it cannot call other functions defined in fun.
  MC can enclose the functions needed by f and make it possible for f
  to call other functions defined in fun.
}

\author{ Knut M. Wittkowski \email{kmw@rockefeller.edu} }

\examples{
f1 <- function(x, y) x+y
f2 <- MC(function(x, y) x*y, list(f1=f1))
}
\keyword{ utilities }
