\name{lowerCase}
\alias{lowerCase}
\alias{upperCase}
\title{Case conversion}
\concept{splus}
\usage{lowerCase(x)
upperCase(x)}
\description{Convert text to lower or upper case.}

\arguments{
\item{x}{a character string.}

}

\value{
a character string coerced to the specified case.
}
\seealso{
\code{\link{casefold}}, \code{\link{tolower}}, \code{\link{toupper}}.}

\examples{
x <- "A dog and a cat"
lowerCase(x)
upperCase(x)
}
\keyword{utilities}

