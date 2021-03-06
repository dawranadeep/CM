% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/THINSp.R
\name{THINSp}
\alias{THINSp}
\title{Thin-Plate Spline}
\usage{
THINSp(locs, knots, tol = 0)
}
\arguments{
\item{locs}{n-dimensional vector of locations}

\item{knots}{r-dimensional vector of knots}

\item{tol}{thresholds small values of the elements of psi to be zero. Default is no threshold.}
}
\value{
psi nxr matrix of basis functions
}
\description{
This code computes the thin-plate spline function f(s) = s^2 log(s) for 1-dimensional spatial locations
}
\examples{
#example two dimensional separable thin-plate spline
points1 = seq(0,1,length.out=1001)
points1=points1[2:1001]
r = 10
knots = seq(0,1,length.out=r)
G1 = THINSp(as.matrix(points1,m,1),as.matrix(knots,r,1))

G=G1 \%x\% G1

}
