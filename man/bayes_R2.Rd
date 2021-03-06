% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bayes_R2.R
\name{bayes_R2}
\alias{bayes_R2}
\alias{bayes_R2.default}
\alias{loo_R2}
\title{Generic function and default method for Bayesian R-squared}
\usage{
bayes_R2(object, ...)

\method{bayes_R2}{default}(object, y, ...)

loo_R2(object, ...)
}
\arguments{
\item{object}{The object to use.}

\item{...}{Arguments passed to methods. See the methods in the \pkg{rstanarm}
package for examples.}

\item{y}{For the default method, a vector of \eqn{y} values the same length
as the number of columns in the matrix used as \code{object}.}
}
\value{
\code{bayes_R2} and \code{loo_R2} methods should return a vector of
  length equal to the posterior sample size.

  The default \code{bayes_R2} method just takes \code{object} to be a matrix of y-hat values
  (one column per observation, one row per posterior draw) and \code{y} to be
  a vector with length equal to \code{ncol(object)}.
}
\description{
Generic function and default method for Bayesian version of R-squared for
regression models. A generic for LOO-adjusted R-squared is also provided. See
\code{bayes_R2.stanreg} in the \pkg{\link[rstanarm]{rstanarm}} package for an
example of defining a method.
}
\references{
Andrew Gelman, Ben Goodrich, Jonah Gabry, and Aki Vehtari (2018). R-squared
for Bayesian regression models. \emph{The American Statistician}, to appear.
\href{http://www.stat.columbia.edu/~gelman/research/published/bayes_R2_v3.pdf}{Preprint},
\href{https://avehtari.github.io/bayes_R2/bayes_R2.html}{Notebook}.
}
\seealso{
\itemize{
  \item The \pkg{\link[rstanarm]{rstanarm}} package for example methods
  (\href{https://CRAN.R-project.org/package=rstanarm}{CRAN},
  \href{https://github.com/stan-dev/rstanarm}{GitHub}).
}

\itemize{
  \item Guidelines and recommendations for developers of \R packages
  interfacing with Stan and a demonstration getting a simple package working
  can be found in the vignettes included with \pkg{rstantools} and at
  \url{http://mc-stan.org/rstantools/articles/}.
}
}
