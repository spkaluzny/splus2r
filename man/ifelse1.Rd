\name{ifelse1}
\alias{ifelse1}
\title{Conditional Data Selection}
\concept{splus}
\usage{ifelse1(test, x, y, ...)}
\description{This is equivalent to \code{{if(test) x else y}} . The main
advantage of using this function is better formatting, and a more
natural syntax when the result is being assigned; see examples below.

With 5 arguments, this is equivalent to \code{{if(test1) x else if(test2) u
else v}} (where arguments are given by name, not position).
}
\arguments{
\item{test}{logical value; if TRUE return x.}

\item{x}{any object; this is returned if test is TRUE.}

\item{y}{any object; this is returned if test is FALSE.}
\item{...}{there should be 3, 5, 7, etc. arguments to this function; arguments 1, 3, 5, etc. should be logical values; the other arguments (even numbered, and last) are objects that may be returned.}
}

\details{
\code{test} should be a scalar logical, and only one of \code{x} or
\code{y} is evaluated, depending on whether \code{test = TRUE} or
\code{test = FALSE}, and \code{x} and \code{y} may be any objects.
In contrast, for
\code{ifelse}, test is normally a vector, both \code{x} and \code{y}
are evaluated, even if
not used, and \code{x} and \code{y} are vectors the same length as
\code{test}.
}

\value{
  with three arguments, one of \code{x} or \code{y}.
  With k arguments, one of arguments 2, 4, ..., k-1, k.
}
\seealso{
\code{\link[base]{ifelse}}, \code{\link[base]{if}}.}

\examples{
ifelse1(TRUE, "cat", "dog")
ifelse1(FALSE, "one", FALSE, "two", "three")
}
\keyword{utilities}
