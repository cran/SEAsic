% Generated by roxygen2 (4.0.2): do not edit by hand
\name{emaxd}
\alias{emaxd}
\title{Expected Maximum Difference}
\usage{
emaxd(x, o, g, n, f, s)
}
\arguments{
\item{x}{a column vector of scores on which the rsd is conditioned}

\item{o}{a column vector of equated scores based on the overall population (aligned with elements in x)}

\item{g}{column vectors of equated scores based on various subpopulations (aligned with elements in x)}

\item{n}{a scalar indicating the number of groups}

\item{f}{a column vector of relative frequency associated with each raw score (can be based on either overall population or a subpopulation) (aligned with elements in x)}

\item{s}{a scalar representing the standard deviation of x for any (sub)population of interest (e.g., synthetic population) (default is 1, which leads to calculation of the unstandardized emaxd)}
}
\value{
expected maximum difference
}
\description{
The expected maximum difference index, \eqn{EMAXD}{EMAXD}, locates the maximum absolute difference between subpopulation equated scores, \eqn{y_j(x)}{y_j(x)}, and the equated scores based on the overall population, \eqn{y(x)}{y(x)}, at each score level \eqn{x}{x}, and then takes the expectation of those maximum scores across score levels. Formally,
\deqn{EMAXD=\frac{\sum_{x}P_x\{\mbox{max}\lbrack\mid y_j(x)-y(x)\mid\rbrack\}}{\sigma_x},}{EMAXD=sum(P(max[|y_j(x)-y(x)|]))/s,}
where \eqn{P_x}{P} represents a proportion of examinees based on the population distribution specified in argument \eqn{f}{f}, and \eqn{\sigma_x}{s} is the standard deviation of \eqn{x}{x} scores in the (sub)population of interest. It is considered an omnibus, unconditional index that was originally presented by Dorans and Holland (2000). It provides practitioners with a summary of the maximum differences found between subpopulation and overall equated scores.
}
\examples{
#Unstandardized EMAXD across subpopulation 1 and subpopulation 2 in the example data set, ex.data
emaxd(x=ex.data[,1],o=ex.data[,2],
g=c(ex.data[,3],ex.data[,4]),
n=2,f=ex.data[,8])

#Unstandardized EMAXD across subpopulations 1 thru 5 in the example data set, ex.data
emaxd(x=ex.data[,1],o=ex.data[,2],
g=c(ex.data[,3],ex.data[,4],ex.data[,5],ex.data[,6],ex.data[,7]),
n=5,f=ex.data[,8])

#Standardized EMAXD across subpopulations 1 thru 5 in the example data set, ex.data
emaxd(x=ex.data[,1],o=ex.data[,2],
g=c(ex.data[,3],ex.data[,4],ex.data[,5],ex.data[,6],ex.data[,7]),
n=5,f=ex.data[,8],s=4.2)
}
\author{
Anne Corinne Huggins-Manley
}
\references{
\itemize{
\item{Dorans, N.J., & Holland, P.W. (2000). Population invariance and the equitability of tests: Theory and the linear case. Journal of Educational Measurement, 37, 281-306.}
}
}
\seealso{
\code{\link{maxd}}
}

