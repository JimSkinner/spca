% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/evidence.R
\name{log_evidence}
\alias{log_evidence}
\title{Compute the laplace approximation to the log evidence given the MAP
parameters K, mu, sigSq as well as the prior covariance matrix K.
Note that this is multiplied by an UN-KNOWN CONSTANT due to the
improper priors over mu and sigSq. However, this unknown constant is
always the same regardless of k and K, so this may be used to compute
meaningful bayes factors between StPCA models.}
\usage{
log_evidence(X, K, WHat, muHat, sigSqHat, H)
}
\arguments{
\item{X}{Data}

\item{K}{Prior covariance matrix}

\item{WHat}{Loadings matrix}
}
\value{
Approximate log evidence
}
\description{
Compute the laplace approximation to the log evidence given the MAP
parameters K, mu, sigSq as well as the prior covariance matrix K.
Note that this is multiplied by an UN-KNOWN CONSTANT due to the
improper priors over mu and sigSq. However, this unknown constant is
always the same regardless of k and K, so this may be used to compute
meaningful bayes factors between StPCA models.
}
