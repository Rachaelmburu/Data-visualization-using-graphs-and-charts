#25/02/2019
#Data visualization using Line graphs in R.
#CIAT data and research methods project.
#Prepared by Rachael Mburu.

#Loading agicdat library.
library(agridat)
#Loading data into R.
aastveit.barley.covs
#Renaming the data to a preferred name.
Barley_data=aastveit.barley.covs
#Ploting a line graph of one continuos variable.
plot(Barley_data$R1,type = "l")
#Plotting a line graph with a line and dots.
plot(Barley_data$R1,type = "o")
#Plotting a labelled and coloured line graph.
plot(Barley_data$R1,type = "o",main = "Rainfall chart for period 1",
     ylab = "Period1_rainfall",xlab = "mm per day",col="blue")
#Plotting multiple lines in a chart.
plot(Barley_data$R3,type = "o",main = "Rainfall chart for 3 periods ",
     ylab = "Rainfall",xlab = "mm per day",col="blue")
lines(Barley_data$R1,col="red",type = "o")
lines(Barley_data$R2,col="magenta",type = "l")

#Plotting a multiple line chart with a legend.
plot(Barley_data$R3,type = "o",main = "Rainfall chart for 3 periods ",
     ylab = "Rainfall",xlab = "mm per day",col="blue",pch=0)
lines(Barley_data$R1,col="red",type = "o",pch=17)
lines(Barley_data$R2,col="magenta",type = "o",pch=19)
legend("topright",legend = c("R3","R1","R2"),title = "Rainfall period",
       col = c("blue","red","magenta"),pch =c(0,17,19) )

#End.




