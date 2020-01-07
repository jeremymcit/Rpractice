rm(list = ls())
setwd("C:/Users/jberg/OneDrive - PennO365/school/University of London/Machine Learning/R files")
Auto.data <-read.csv("Auto.csv",na.strings = "?")
Auto.data<-na.omit(Auto.data)
Auto_quantitative_data<-Auto.data[,1:7]
#9 b)
sapply(Auto_quantitative_data, range)

#9
#d)

Auto_quantitative_data_minus10to85 <- 


Auto.data.subset <- Auto.data
i<-10
while(i<86){
  Auto.data.subset<-Auto.data.subset[-10,]
  i <- i + 1
}
sapply(Auto.data.subset[,1:7], mean)
sapply(Auto.data.subset[,1:7], sd)
sapply(Auto.data.subset[,1:7], range)

#9e
library(ggplot2)
ggplot(Auto.data, aes(y = mpg, x = horsepower)) + geom_point() + geom_smooth(method='lm')
boxplot(horsepower~origin)
cor(mpg, cylinders)
hist(weight)
hist(mpg)
pairs(Auto.data[1:3])

#10
library(MASS)
#a
dim(Boston)
#d
hist(Boston$crim)
Boston[which.max(Boston$crim),]
mean(Boston$crim)

#e
sum(Boston$chas)

#f
library(dplyr)
Boston %>% filter(chas == 1) %>% dplyr::select(ptratio) %>% unlist() %>% median()

#g
which(Boston$medv == min(Boston$medv))
#h 
sum(Boston$rm>7)
sum(Boston$rm>8)
summary(subset(Boston, rm>8))
