% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/log_RL_progress_mt.R
\name{log_RL_progress_mt}
\alias{log_RL_progress_mt}
\title{Function to log RL progress, dedicated to Market Types}
\usage{
log_RL_progress_mt(x, states, actions, control)
}
\arguments{
\item{x}{- dataframe containing trading results}

\item{states}{- Selected states of the System}

\item{actions}{- Selected actions executed under environment}

\item{control}{- control parameters as defined in the Reinforcement Learning Package}
}
\value{
dataframe with log of RL model
}
\description{
Function will record Q values during updating of the model. These values will be used by another function
}
\examples{

# retrieve RL model Q values progress
library(ReinforcementLearning)
library(dplyr)
library(magrittr)
data(trading_systemDF)
x <- trading_systemDF
states <- c("BUN", "BUV", "BEN", "BEV", "RAN", "RAV")
actions <- c("ON", "OFF") # 'ON' and 'OFF' are referring to decision to trade with Slave system
control <- list(alpha = 0.7, gamma = 0.3, epsilon = 0.1)

log_RL_progress_mt(x = x,states = states, actions = actions, control = control)


}
