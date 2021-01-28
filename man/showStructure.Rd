\name{showStructure}
\alias{showStructure}
\title{Describe the structure of an object}
\description{Describe the structure of an object, recursively.}
\usage{
showStructure(x, maxlen = 20, describeAttributes = TRUE,
   short = NULL, prefix = "", attri = FALSE, ...)
}
\arguments{
\item{x}{any object}
\item{maxlen}{integer; if \code{x} is a list with more than
  \code{maxlen} components, only the names are printed.
  This may be a vector, in which case the \code{K}th element is used
  at the \code{K}th level of recursion.}
\item{describeAttributes}{logical; if \code{FALSE} then only the names of
  attributes are printed; the structure of the attributes is not shown.}
\item{short}{\code{NULL} or logical; this may be used by methods,
  to indicate whether to print a shorter description.
  It is currently used by \code{bdFrame} and \code{bdVector} methods
}
\item{prefix}{for internal use in recursive calls.  This is used for
  indenting in recursive calls.}
\item{attri}{for internal use in recursive calls.  This is \code{TRUE}
  if the curent object being described is a list of attributes.}
\item{...}{Additional argument that may be passed to methods;
  not currently used.}
}
\value{This prints a description; it doesn't return anything useful.}
\details{This supports recursive objects, using recursive calls. Each
  level of recursion is indented two additional spaces.  List components
are shown with \code{$}, slots with \code{@}, and attributes with \code{&}.}
\author{Tim Hesterberg}
\seealso{
\code{\link{names}},
\code{\link{str}}.
}
\examples{
a <- c(m=1, n=2)
b <- diag(1:3)
cc <- cbind(a=1:5, b=2:6, c=letters[1:5])
d <- data.frame(cc)
attr(d, "dup.row.names") <- TRUE
e <- ts(1:10, frequency = 4, start = c(1959, 2))
f <- list(a,b=b)
setClass("track", representation(x="numeric", y="numeric"))
g <- new("track", x=1:5, y=1:5)

showStructure(a)
showStructure(b)
showStructure(cc)
showStructure(d)
showStructure(e)
showStructure(f)
showStructure(g)  # prints with @ rather than $
showStructure(list(a=a, b=b))
showStructure(list(cc=cc, d, list(a,e)))
}
\keyword{manip}
\keyword{programming}
\keyword{classes}
