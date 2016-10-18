% Please edit documentation in R/msmediate.R
\name{msmediate}
\alias{msmediate}
\title{Multilevel Causal Mediation Analysis}
\usage{
msmediate(data, y, treatment, mediator, X, site)
}
\arguments{
\item{data}{The data set for analysis.}

\item{y}{The name of the outcome variable (string).}

\item{treatment}{The name of the treatment variable (string).}

\item{mediator}{The name of the mediator variable (string).}

\item{X}{A vector of variable names (string) of pretreatment confounders, which will be included in the propensity score model. For now, the multilevel propensity score model only allows for one random intercept.}

\item{site}{The variable name for the site ID (string).}
}
\value{
A list contains the variance estimates of the causal effects including the correlation between the direct and indirect effects across sites ($Random_effects), and the population average effect estimates ($Fixed_effects).
}
\description{
An R package for causal mediation analysis in the multilevel setting.
}
\examples{
data(sim)

l = msmediate(data = sim, y = "y", treatment = "tr", mediator = "me", X = c("x1", 
    "x2", "x3"), site = "site")
}
\author{
Xu Qin and Guanglei Hong
}
\references{
Qin, X., and Hong, G. A Template for Multisite Causal Mediation Analysis.
}
