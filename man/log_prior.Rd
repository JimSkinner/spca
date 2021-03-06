% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prior.R
\name{log_prior}
\alias{log_prior}
\title{Calculate the *un-normalised* log prior (only in sigSq) for StPCA
with the given loadings matrix}
\usage{
log_prior(K, W, sigSq)
}
\arguments{
\item{K}{Prior covariance matrix}

\item{W}{Loadings matrix}
}
\value{
un-normalised log prior (numeric)
}
\description{
Calculate the *un-normalised* log prior (only in sigSq) for StPCA
with the given loadings matrix
}
