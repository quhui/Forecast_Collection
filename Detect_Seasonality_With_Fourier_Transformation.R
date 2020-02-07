
rm(list=ls())
gc()

library(tidyverse)
library(tseries)
library(TSA)

list.files()

#part1:time series visualization
air<-read.csv('data_timeseries_air.csv',stringsAsFactors = F)

#compute the Fourier Transform
p=periodogram(air$AIR)

dd<-data.frame(freq=p$freq,spec=p$spec)
order<-dd[order(-dd$spec),]
top3=head(order,5)
top3

#convert to time periods
time<-1/top3$freq
time

