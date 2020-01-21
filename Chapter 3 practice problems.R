#Conceptual Question 1 
#The coefficient of intercept is 0 vs non-zero when in the precense of the other variables.
#Conclusion is that the coefficient are non-zero and we get an approxpimatly .046 increase of number of units sold for every increase of 1 in TV budget

#Conceptual Question 2
#KNN classifier groups the results into specific categories while KNN regression gives a numerical result that is not from a specific list of numbers.

#Conceptual Question 3
#b)
50+.07*110+35+4*20+4*110*.01-10*4

#8
library(MASS)
#install.packages("ISLR")
library(ISLR)
#8a)
lm.fit<-lm(mpg~horsepower, Auto)
summary(lm.fit)
summary(lm.fit)$r.squared
#about 60% of mpg predicted by horesepower
summary(lm.fit)$sigma/mean(Auto$mpg)
#About 20% error in the fit.
#iii) negative due to a negative coefficient on horsepower and a low p value

#iv)
sum(lm.fit$coefficients*c(1,98))
predict(lm.fit, data.frame(horsepower =c(98)), interval = "confidence")
predict(lm.fit, data.frame(horsepower =c(98)), interval = "prediction", level = 0.95)
        