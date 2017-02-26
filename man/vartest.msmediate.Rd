% Please edit documentation in R/msmediate.R
\name{vartest.msmediate}
\alias{vartest.msmediate}
\title{Include Variance Testing for Multilevel Causal Mediation Analysis}
\usage{
vartest.msmediate(data, y, treatment, mediator, X, site, npermute = 200)
}
\arguments{
\item{data}{The data set for analysis.}

\item{y}{The name of the outcome variable (string).}

\item{treatment}{The name of the treatment variable (string).}

\item{mediator}{The name of the mediator variable (string).}

\item{X}{A vector of variable names (string) of pretreatment confounders, which will be included in the propensity score model. For now, the multilevel propensity score model only allows for one random intercept.}

\item{site}{The variable name for the site ID (string).}

\item{npermute}{The number of permutations for the permutation test. The default value is 200.}
}
\value{
A list contains the variance estimates of the causal effects including the correlation between the direct and indirect effects across sites ($Random_effects), and the population average effect estimates ($Fixed_effects).
}
\description{
Besides providing the estimation results as given by the function msmediate(), performs variance testing causal mediation analysis in the multilevel setting.
}
\examples{
data(sim)

vartest.msmediate(data = sim, y = "y", treatment = "tr", mediator = "me", X = c("x1", 
    "x2", "x3"), site = "site", npermute = 2)

}
\references{
Qin, X., & Hong, G (in press). A weighting method for assessing between-site heterogeneity in causal mediation mechanism. Journal of Educational and Behavioral Statistics.
}
\author{
Xu Qin and Guanglei Hong
}
