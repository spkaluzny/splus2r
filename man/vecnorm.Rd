\name{vecnorm}
\alias{vecnorm}
\title{p-norm of a vector}
\concept{splus}
\usage{vecnorm(x, p=2)}
\description{Computes the p-norm of a vector}

\arguments{
\item{x}{the vector whose norm is sought (either numeric or complex).}
\item{p}{a number or character string indicating the type of norm desired. Possible values include real number greater or
equal to 1, \code{Inf}, or character strings \code{"euclidean"} or \code{"maximum"}. Default: 2.}
}

\value{
requested p-norm of input vector.
}
\seealso{
\code{\link{rnorm}}.}

\examples{
## compare 2-norm calculations 
x <- rnorm(100)
sqrt(sum(x*x))
vecnorm(x)

## compare 2-norm of series which sums to Inf. The 
## vecnorm returns a finite value in this case. 
x <- rep(sqrt(.Machine$double.xmax), 4)
sqrt(sum(x*x))
vecnorm(x)

## 1-norm comparison 
sum(abs(x))
vecnorm(x, p=1)

## L-infinity norm comparison 
max(abs(x))
vecnorm(x, p=Inf)
}
\keyword{utilities}

