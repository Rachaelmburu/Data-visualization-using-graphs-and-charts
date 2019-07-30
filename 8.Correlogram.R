#28/02/2019
#Data visualization using correlogram/correlation matrix in R.
#CIAT data and research methods project.
#Prepared by Rachael Mburu.

#Loading agicdat library.
library(agridat)
#Loading inbuilt data to the current R environment.
agridat::australia.soybean
#Selecting only the coninuous variables.
soybean_data=australia.soybean[,c(3,5:10)]
#Computing correlation of the variables in the selected data.
cor_soybean=cor(soybean_data)
#Installing package corrplot.
install.packages("corrplot")
#Loading library corrgram
library(corrplot)
#Plotting a correlogram,cirle method with a specific type of layout. 
corrplot(cor_soybean,method = "circle",type = "lower")
#Plotting a correlogram,number method with a specific type of layout.
corrplot(cor_soybean,method = "number",type = "upper")
#Plotting a correlogram ,color method with a specific type of layout.
corrplot(cor_soybean,method = "color",type="full")
#Plotting an ordered correlogram .
corrplot(cor_soybean,method = "circle",type="full",order ="original" )
#Plotting a coloured correlogram .
corrplot(cor_soybean,method = "circle",type="full",order ="hclust",
         col =rainbow(7))
#Plotting a correlogram with rotated text labels .
corrplot(cor_soybean,method = "circle",type="full",order ="hclust",
         col =rainbow(7),tl.srt = 55)
#Alternatively ,
#Loading package corrgram.
library(corrgram)
#Plotting a correlogram with different shades
corrgram(soybean_data,lower.panel = panel.pts,upper.panel = panel.pie)
#Plotting a one lower sided correlogram 
corrgram(soybean_data,lower.panel = panel.pie,upper.panel = NULL)
#Plotting a one lower sided correlogram 
corrgram(soybean_data,lower.panel = NULL,upper.panel = panel.pie)
#Plotting a correlogram of data with sepcific colours for each variable.
corrgram(soybean_data,order = T,col.regions = colorRampPalette(c("red","magenta",
        "green","blue","darkblue","gold","burlywood1")))
#Plotting a correlogram with a title
corrgram(soybean_data,order = F,main="Corrgram of soybean data intercorrelations",
         col.regions = colorRampPalette(c("red","magenta",
        "green","blue","darkblue","gold","burlywood1")))
##End.

