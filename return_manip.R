library(dplyr)
lagpad <- function(x) {return(c(x[(1+1):length(x)],rep(NA,1)))}
lagpad <- function(x,a) {return(c(x[(1+a):length(x)],rep(NA,1)))}
lnret <- function(x) {return(diff(log(x)))}
dailyret <- function (x) {return(diff(x)/x[-length(x)])}
weeklyret <- function(x) {return(diff(x,lag=7)/head(x,-7))}
lag1dailyret <- function(x) {return(lagpad(dailyret(x)))}
lagndailyret <- function(x,n) {return(lagpadc(dailyret(x),n))}
