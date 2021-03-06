% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/survsamp.R
\name{est.pop.size}
\alias{est.pop.size}
\title{A function for population size estimation.}
\usage{
est.pop.size(method = "direct", n = NULL, t = NULL, s = NULL,
  mbar = NULL, a = NULL, m = NULL, A = NULL, alpha = 0.05,
  evenly.dispersed = TRUE)
}
\arguments{
\item{method}{The method of sampling. Options include: direct, inverse, and quadrant.}

\item{n}{Size of the second sample (direct and inverse sampling methods).}

\item{t}{Size of the first sample (direct and inverse sampling methods).}

\item{s}{The number of retagged individuals (direct and inverse sampling methods).}

\item{mbar}{The estimated average number of elements per selected quadrant.}

\item{a}{The area size of the selected quadrants.}

\item{m}{A vector of the number of elements per selected quadrant.}

\item{A}{The total area.}

\item{alpha}{Significance level.}

\item{evenly.dispersed}{Logical statement indicating if the elements are evenly dispersed.}

\item{n}{The number of selected quadrants.}
}
\description{
This function allows you to make estimation or sample size determinations for surveys using simple random sampling.
}
\examples{
est.pop.size(method="direct",n=200,t=300,s=62)
est.pop.size(method="inverse",n=100,t=150,s=35)
est.pop.size(method="quadrant",a=16,
            m=c(rep(0,13),rep(1,8),rep(2,12),rep(3,10),rep(4,5),rep(5,2)))
#not enough information above to est. M, only lambda (density)
est.pop.size(method="quadrant",
            mbar=40,a=10,A=60*8,n=20)
}
\keyword{elementary}
\keyword{estimation}
\keyword{population}
\keyword{sampling}
\keyword{size}
\keyword{survey}
