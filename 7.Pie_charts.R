#28/02/2019
#Data visualization using pie charts in R.
#CIAT data and research methods project.
#Prepared by Rachael Mburu.

#Loading agicdat library.
library(agridat)
#Loading inbuilt data in R.
besag.beans
#Renaming data.
beans_data=besag.beans
#tabling data of a specific variable .
tabled_data=table(beans_data$gen)
#Labeling data according to corresponding category names.
data_lbls=paste(names(tabled_data),"\n",tabled_data)
#Plotting a pie chart with labels.
pie(tabled_data,labels = data_lbls,main = "pie chart of bean variety")
#Plotting a pie chart with different colours for each group category.
pie(tabled_data,labels = data_lbls,col = rainbow(6),main = "pie chart")

##Plotting a pie chart with title, labels and respective percentages
pcnt=round(tabled_data/sum(tabled_data)*100)
data_lbls1=paste(pcnt,"%")
data_lbls1=paste(names(tabled_data),"\n",data_lbls1)
pie(tabled_data,data_lbls1,col = rainbow(6),main = "Pie chart")

##Plotting a 3D pie chart.

#Installing package plotrix.
install.packages("plotrix")
#Loading package plotrix.
library(plotrix)
#Plotting a 3D piechart with labels and the main 
pie3D(tabled_data,labels = data_lbls1,explode = 0.3,main="3D pie chart")

#End.