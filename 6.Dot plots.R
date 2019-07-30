#26/02/2019
#Data visualization using dot plots in R.
#CIAT data and research methods project.
#Prepared by Rachael Mburu.

#Loading agicdat library.
library(agridat)
#Calling the stored data to be used.
besag.beans
#Selecting 40 rows from the data.
beans_data=besag.beans[1:40,]
#Calling the selected data.
beans_data
#Plotting a simple dot chart.
dotchart(beans_data$yield,labels = beans_data$gen)
#Plotting a labelled and coloured dot chart.
dotchart(beans_data$yield,labels = beans_data$gen,cex = 0.6,xlab = "yield",
         main = "Yield by variety type ",col="blue")
#Grouped and coloured dot plot from sorted data

#Sorting the data.
beans_data1=beans_data[order(beans_data$gen),]
#Adding a colour vector to the data for each variety type.
beans_data1$colour[beans_data1$gen=="Maris"]<-"violet"
beans_data1$colour[beans_data1$gen=="Dwarf"]<-"blue"
beans_data1$colour[beans_data1$gen=="Metissa"]<-"darkgreen"
beans_data1$colour[beans_data1$gen=="Topless"]<-"magenta"
beans_data1$colour[beans_data1$gen=="Minica"]<-"red"
beans_data1$colour[beans_data1$gen=="Stella"]<-"darkblue"
#Plotting a grouped,labelled and coloured dot chart.
dotchart(beans_data1$yield,labels = beans_data1$gen,groups = beans_data1$gen,
         color = beans_data1$colour,cex = 0.5,xlab = "Yiled",pch = 19,main = "Dot plot of variety type versus yield")

#End.
