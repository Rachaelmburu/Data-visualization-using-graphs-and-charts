#25/02/2019
#Data visualization using Boxplot in R.
#CIAT data and research methods project
#Prepared by Rachael Mburu

#Loading package agridat
library(agridat)
#Loading data in R.
agridat::adugna.sorghum
#Renaming data into preffered name.
sorghum_data=adugna.sorghum
#Plotting a boxplot of sorghum yield(continuous variable)
boxplot(sorghum_data$yield)
#Plotting a boxplot of with labels and titles.
boxplot(sorghum_data$yield,ylab="Yield",main="Boxplot of sorghum yield")
#Plotting a boxplot to compare groups.
boxplot(sorghum_data$yield~sorghum_data$loc)
#Plotting a labelled boxplot to compare groups.
boxplot(sorghum_data$yield~sorghum_data$loc,main="Boxplot of Sorghum yield by location",
        ylab="Sorghum yield",xlab="Location",col="gold")
#Plotting a boxplot coloured differently for each group category boxplot.
boxplot(sorghum_data$yield~sorghum_data$loc,main="Boxplot of Sorghum yield by location",
        ylab="Sorghum yield",xlab="Location",col=c("gold","blue","red"))
#Plotting a boxplot with notch.
boxplot(sorghum_data$yield~sorghum_data$loc,notch=T,main="Notched Boxplot of Sorghum yield by location",
        ylab="Sorghum yield",xlab="Location",col="gold")

#End.