#26/02/2019
#Data visualization using scatter plots in R.
#CIAT data and research methods project.
#Prepared by Rachael Mburu.

#Loading agicdat package ;contains agricultural datasets.
library(agridat)
#Loading data.
australia.soybean
#Renaming data into a preffered name.
soybean_data=australia.soybean

##Scatter plot of two continuous variables.

#Plotting a simple scatter plot.
plot(soybean_data$yield,soybean_data$height)
#Plotting a labelled scatter plot 
plot(soybean_data$yield,soybean_data$height,main = "Plot of height against yield",
     ylab = "height in metres",xlab = "yield in tons/hectare")
#Plotting a scatter plot with a regression line.
plot(soybean_data$height,soybean_data$yield,main = "Plot of height against yield",
     ylab = "height in metres",xlab = "yield in tons/hectare")
abline(lm(soybean_data$yield~soybean_data$height))
#Plotting a scatter plot with a specified horizontal line.
plot(soybean_data$height,soybean_data$yield,main = "Plot of height against yield",
     ylab = "height in metres",xlab = "yield in tons/hectare")
abline(h=3)
#Plotting a scatter plot with a horizontal and vertical line
plot(soybean_data$height,soybean_data$yield,main = "Plot of height against yield",
     ylab = "height in metres",xlab = "yield in tons/hectare")
abline(h=3,v=0.8)
#Plotting a scatter plot specifying the scale.
plot(soybean_data$yield,soybean_data$height,main = "Plot of height against yield",
     ylab = "height in metres",xlab = "yield in tons/hectare",xlim = c(0,5),
     ylim = c(0,2.0))
#Plotting a scatter plot with coloured points.
plot(soybean_data$yield,soybean_data$height,main = "Plot of height against yield",
     ylab = "height in metres",xlab = "yield in tons/hectare",xlim = c(0,5),
     ylim = c(0,2.0),col="blue",col.axis="magenta")

#Plotting a scatter plot specifing the shape of the points.
plot(soybean_data$yield,soybean_data$height,main = "Plot of height against yield",
     ylab = "height in metres",xlab = "yield in tons/hectare",xlim = c(0,5),
     ylim = c(0,2.0), col="blue",col.axis="magenta",pch=10)


##Plotting a scatter plot of more than one series of data.

#Plotting a scatter plot for location Brookstead category
plot(soybean_data[soybean_data$loc=='Brookstead',]$height,
     soybean_data[soybean_data$loc=='Brookstead',]$yield,
      main = "Plot of height against yield",
     ylab = "height in metres",xlab = "yield in tons/hectare",xlim = c(0,5),
     ylim = c(0,2.0), col="blue",col.axis="magenta",pch=10)

#Adding a plot for location Lawes to the exisisting plot
par(new=T)
plot(soybean_data[soybean_data$loc=='Lawes',]$height,
     soybean_data[soybean_data$loc=='Lawes',]$yield,
     main = "Plot of height against yield",
     ylab = "height in metres",xlab = "yield in tons/hectare",xlim = c(0,5),
     ylim = c(0,2.0), col="green",col.axis="magenta",pch=0)

#Adding a plot for location Nambour to the exisisting plot.

par(new=T)
plot(soybean_data[soybean_data$loc=='Nambour',]$height,
     soybean_data[soybean_data$loc=='Nambour',]$yield,
     main = "Plot of height against yield",
     ylab = "height in metres",xlab = "yield in tons/hectare",xlim = c(0,5),
     ylim = c(0,2.0), col="red",col.axis="magenta",pch=18)

#Adding a plot for location RedlandBay to the exisisting plot

par(new=T)
plot(soybean_data[soybean_data$loc=='RedlandBay',]$height,
     soybean_data[soybean_data$loc=='RedlandBay',]$yield,
     main = "Plot of height against yield",
     ylab = "height in metres",xlab = "yield in tons/hectare",xlim = c(0,5),
     ylim = c(0,2.0), col="purple",col.axis="magenta",pch=19)

#Adding legends to the scatter plot of multiple series of data .
legend(x=3,y=1.1,legend=c('Brookstead','Lawes','Nambour','RedlandBay'),
       col = c("blue","green","red","purple"),pch = c(10,0,18,19))

#End.

