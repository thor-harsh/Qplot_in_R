#Method 1-Select the file manually
stats<-read.csv(file.choose())
stats

#Method 2-Set WD and read data
getwd()
setwd("C:\\Users\\hp\\OneDrive\\Documents")
rm(stats)
stats
stats<-read.csv('P2-Demographic-Data.csv')
stats





head(stats,n=8)
nrow(stats,n=10)
ncol(stats)
tail(stats,n=10)
str(stats)
runif#random variables distributed normally
summary(stats)

#-------------------------Using the $ sign---------------#
stats
head(stats)
stats[3,3]
stats[4,"Birth.rate"]
stats$Internet.users
stats[,"Internet.users"]
str(stats)
levels(stats$Income.Group)


#-------------Basic Operations with DataFrame------------#
stats[1:10,] #subsetting
stats[3:9,]
stats[c(4,100),]


is.data.frame(stats[1,])
is.data.frame(stats[,1])
is.data.frame(stats[,1,drop=F])
stats[,1,drop=F]

#multiply columns
head(stats)
stats$Birth.rate*stats$Internet.users
stats$Birth.rate+stats$Internet.users


head(stats)
stats$MyCalc<-stats$Birth.rate * stats$Internet.users
head(stats)
stats$xyz<-1:5
tail(stats)
head(stats)
stats$MyCalc<-NULL
stats$xyz<-NULL



#Filtering DataFrames
head(stats)
filter<-stats$Internet.users<2
stats[stats$Birth.rate>40 & stats$Internet.users<2,]
stats[stats$Income.Group=="High income",]
str(stats)
stats[stats$Country.Name=="Malta",]

library(ggplot2)
?qplot()

qplot(data=stats,x=Internet.users)
qplot(data=stats,x=Income.Group,y=Birth.rate)
qplot(data=stats,x=Income.Group,y=Birth.rate,geom="boxplot")
#qplot(data)
