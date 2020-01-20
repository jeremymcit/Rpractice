#Conceptual Question 1 
#The coefficient of intercept is 0 vs non-zero when in the precense of the other variables.
#Conclusion is that the coefficient are non-zero and we get an approxpimatly .046 increase of number of units sold for every increase of 1 in TV budget

#Conceptual Question 2
#KNN classifier groups the results into specific categories while KNN regression gives a numerical result that is not from a specific list of numbers.

#Conceptual Question 3
#b)
50+.07*110+35+4*20+4*110*.01-10*4


library(MASS)
#install.packages("ISLR")
library(ISLR)
lm.fit <- lm(medv~lstat, data = Boston)
lm.fit2<-update(lm.fit,~.+I(lstat^2))
lm.fit3<-update(lm.fit2,~.+crim)
anova(lm.fit2,lm.fit3)
plot(lm.fit3)

