#25/02/2019
#Data visualization using Histogram in R.
#CIAT data and research methods project
#Prepared by Rachael Mburu

##Loading package agridat.
library(agridat)
#Loading inbuilt data in R.
agridat::besag.beans
#Renaming the loaded data.
beans_data=besag.beans
#Ploting a histogram.
hist(beans_data$yield)
#Plotting a histogram with a frame
hist(beans_data$yield)
box()
#Plotting a histogram with specific number of bins
hist(beans_data$yield,breaks = 12)
#Plotting a labelled histogram.
hist(beans_data$yield,main = "Histogram of Beans yield",col = "violet",
     xlab = "Frequency",ylab = "Beans yield")
#Plotting a histogram with a normal curve and a frame.
hist(beans_data$yield,probability = T,main = "Histogram of Beans yield",col = "violet",
     xlab = "Frequency",ylab = "Beans yield")

lines(density(beans_data$yield),col="blue")
box()

#plotting multiple plots in a single graph.
par(mfrow=c(2,2))
hist(beans_data$yield)

hist(beans_data$yield)
box()
hist(beans_data$yield,main = "Histogram of Beans yield",col = "violet",
     xlab = "Frequency",ylab = "Beans yield")
hist(beans_data$yield,probability = T,main = "Histogram of Beans yield",col = "violet",
     xlab = "Frequency",ylab = "Beans yield")

lines(density(beans_data$yield),col="blue")
box()

#End.
