# R working script
# 12-03-2020
# by Israel Ogwu 
mydata <- read.csv("titanic.csv")
datasource <- 'http://dataservices.gmu.edu/files/titanic.csv'
mydata <- read.csv(datasource)
View(mydata)
head(mydata)
tail(mydata)
str(mydata)
summary(mydata$gender)
plot(mydata$gender)
qplot(gender, data=mydata)
qplot(pclass, fill=gender, data=mydata, binwidth = 5)
tt.anova <- aov(fare ~ pclass + gender, data=mydata)
summary(tt.anova)
coefficients(tt.anova)
