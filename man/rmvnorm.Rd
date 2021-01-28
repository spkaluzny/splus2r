\name{rmvnorm}
\alias{rmvnorm}
\title{Multivariate Normal (Gaussian) Distribution}
\concept{splus}
\usage{rmvnorm(n, mean=rep(0,d), cov=diag(d), sd, rho, d=2)}
\description{Random generation for the multivariate normal (also called Gaussian) distribution.}

\arguments{
\item{n}{sample size -- number of random vectors of length d to return (as rows in a matrix).}
\item{cov}{covariance or correlation matrix with d rows and columns.}

\item{d}{dimension of the multivariate normal.}

\item{mean}{vector of length d, or matrix with n rows and d columns.}

\item{rho}{scalar, vector, or bdVector of length n, containing correlations for bivariate data. This is ignored if cov is supplied.}

\item{sd}{vector of length d, or matrix with n rows and d columns,
containing standard deviations. If supplied, the rows and columns of
cov are multiplied by sd. In particular, if cov is a correlation
matrix and sd is a vector of standard deviations, the result is a
covariance matrix. If sd is a matrix then one row is used for each
observation.}
}

\value{
random sample ( rmvnorm) for the multivariate normal distribution.
}
\seealso{
\code{\link{rnorm}},\code{\link{set.seed}}.}

\examples{
## 5 rows and 2 independent columns 
rmvnorm(5)

## 5 rows and 3 independent columns 
rmvnorm(5, mean=c(9,3,1))

## 2 columns, std. dev. 1, correlation .9 
rmvnorm(5, rho=.9)

## specify variable means and covariance matrix 
rmvnorm(5, mean=c(9,3), cov=matrix(c(4,1,1,2), 2))
}
\keyword{utilities}

