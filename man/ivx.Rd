% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ivx.R
\name{ivx}
\alias{ivx}
\alias{print.ivx}
\title{Fitting IVX Models}
\usage{
ivx(formula, data, horizon, na.action, contrasts = NULL, offset, ...)

\method{print}{ivx}(x, digits = max(3L, getOption("digits") - 3L), ...)
}
\arguments{
\item{formula}{an object of class \code{"\link{formula}"} (or one that
    can be coerced to that class): a symbolic description of the
    model to be fitted.  The details of model specification are given
    under \sQuote{Details}.}

\item{data}{an optional data frame, list or environment (or object
    coercible by \code{\link{as.data.frame}} to a data frame) containing
    the variables in the model.  If not found in \code{data}, the
    variables are taken from \code{environment(formula)},
    typically the environment from which \code{lm} is called.}

\item{horizon}{is the horizon (default horizon = 1 corresponds to a
short-horizon regression)}

\item{na.action}{a function which indicates what should happen
    when the data contain \code{NA}s.  The default is set by
    the \code{na.action} setting of \code{\link{options}}, and is
    \code{\link{na.fail}} if that is unset.  The \sQuote{factory-fresh}
    default is \code{\link{na.omit}}.  Another possible value is
    \code{NULL}, no action.  Value \code{\link{na.exclude}} can be useful.}

\item{contrasts}{an optional list. See the \code{contrasts.arg}
    of \code{\link{model.matrix.default}}.}

\item{offset}{this can be used to specify an \emph{a priori} known
    component to be included in the linear predictor during fitting.
    This should be \code{NULL} or a numeric vector or matrix of extents
    matching those of the response.  One or more \code{\link{offset}} terms can be
    included in the formula instead or as well, and if more than one are
    specified their sum is used.  See \code{\link{model.offset}}.}

\item{...}{additional arguments to be passed to the low level
    regression fitting functions (see below).}

\item{x}{logicals.  If \code{TRUE} the corresponding
    components of the fit (the model frame, the model matrix, the
    response, the QR decomposition) are returned.
  }

\item{digits}{the number of significant digits to use when printing.}
}
\value{
an object of class "ivx".
}
\description{
ivx fits predictive regression models. The method allows standard
chi-square testing for regressors with different degrees of persistence,
from stationary to mildly explosive, and can be used for both short-
and long-horizon predictive regressions.
}
\examples{

# Univariate
ivx(Ret ~ LTY, data = monthly)

# Multivariate
ivx(Ret ~ LTY + TBL , data = monthly)

# Longer horizon
ivx(Ret ~ LTY + TBL, data = monthly, horizon = 4)
}
\references{
Magdalinos, T., & Phillips, P. (2009). Limit Theory for Cointegrated
Systems with Moderately Integrated and Moderately Explosive Regressors.
Econometric Theory, 25(2), 482-526.

Kostakis, A., Magdalinos, T., & Stamatogiannis, M. P. (2014).
Robust econometric inference for stock return predictability. The Review of
Financial Studies, 28(5), 1506-1553.
}
