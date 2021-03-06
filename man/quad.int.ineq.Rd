% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PACLasso.R
\name{quad.int.ineq}
\alias{quad.int.ineq}
\title{Initialize Quadratic Programming Fit with Inequality Constraints}
\usage{
quad.int.ineq(x, y, C.full, b, lambda, d = 10^-5)
}
\arguments{
\item{x}{independent variable matrix of data to be used in calculating PaC coefficient paths}

\item{y}{response vector of data to be used in calculating PaC coefficient paths}

\item{C.full}{complete constraint matrix C (with inequality constraints of the form \code{C.full}*\code{beta} >= \code{b}))}

\item{b}{constraint vector b}

\item{lambda}{value of lambda}

\item{d}{very small diagonal term to allow for SVD (default 10^-7)}
}
\value{
\code{beta} the initial beta vector of coefficients to use for the PaC algorithm
}
\description{
This function is called internally by \code{lars.ineq}
  to get the quadratic programming fit if the user requests
  implementation of the algorithm starting at the smallest lambda
  value and proceeding forwards.
}
\examples{
random_data = generate.data(n = 500, p = 20, m = 10)
quad_start = quad.int.ineq(random_data$x, random_data$y,
random_data$C.full, random_data$b, lambda = 0.01)
quad_start
}
