\name{nDotArgs}
\alias{nDotArgs}
\title{Determine Number of Arguments to Function}
\concept{splus}
\usage{nDotArgs(...)}
\description{count the number of ... arguments passed.}

\arguments{

\item{...}{... arguments or real arguments in the
call to the function whcih calls tt{nDotArgs}.}
}

\value{
the number of ... arguments in the call to the
function which calls \code{nDotArgs}.
}
\seealso{
\code{\link{nargs}}.}

\examples{
myfun <- function(..., a=4) nDotArgs(...)
myfun()                 ## returns 0 
myfun(1:3,"bear")       ## returns 2 
myfun(a=5, 1:3, "bear") ## returns 2 (excludes a)
}
\keyword{utilities}

