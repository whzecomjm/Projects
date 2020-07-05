setwd("f:/")
priceTab = read.csv("Goog3Y.csv")
priceTab = priceTab[order(nrow(priceTab):1),];
adj = priceTab[,7];
logP = log(adj);
diffLog = diff(logP);
sigmaSq = var(diffLog);
mu = mean(diffLog) + 0.5*sigmaSq;