#25/02/2019
#Data visualization using Bar graphs in R.
#CIAT data and research methods project
#Prepared by Rachael Mburu

#installing package agridat,this package contains agricultural datasets.
install.packages("agridat")
#calling the installed package.
library(agridat)
#loading inbuilt data in R.
adugna.sorghum
#renaming the data to the preffered name.
sorghum_data=adugna.sorghum

##Simple bar plots

#Plotting barplot for the yield(continuous variable) of sorghum.
barplot(sorghum_data$yield)
#barplot of a categorical variable. 
barplot(table(sorghum_data$year))
#Plotting a horizontal barplot. 
barplot(table(sorghum_data$year),horiz = T)
#Plotting barplot with different colour for each variable category.
barplot(table(sorghum_data$year),col = c(rainbow(5)))
#Plotting barplot of sorghum by year(categorical variable) with labels and title.
barplot(table(sorghum_data$year),xlab = "Year",ylab = "Frequency",main = "Barplot of Sorghum data")

##Stacked bar plot.

#Tabling number of Sorghum by location and year
trial=table(sorghum_data$loc,sorghum_data$year);trial
#Plotting a stacked barplot of two categorical varaibles
barplot(trial,main = "stacked barplot",xlab = "Year",ylab ="Frequency",
        col = c("magenta","green","red"),legend=rownames(trial))

##Grouped bar plot.

#Plotting a grouped barplot of two categorical varaibles
barplot(trial,main = "grouped barplot",xlab = "Year",ylab = "Frequency",
        col = rainbow(3),beside = T,legend=(rownames(trial)))

##Mean bar plot.

#Aggregating a continous variable by levels of a categorical variables.
means_loc=aggregate(sorghum_data$yield,by=list(sorghum_data$loc),FUN=mean)
#Calling the data formed.
means_loc
#Plotting a bar plot of means of yield by location.
barplot(means_loc$x)
#Plotting a labelled bar plot of yield by location.
barplot(means_loc$x,names.arg = means_loc$Group.1,main = "Barplot of mean yield by location",
        col = c("red","darkblue","violet"))
#Plotting a labelled bar plot of yield by location with a frame.
barplot(means_loc$x,names.arg = means_loc$Group.1,main = "Barplot of mean yield by location",
        col = c("red","darkblue","violet"))

box(lty = '4231')
#End
