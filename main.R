# import data 

data <- read.csv("./Data/ecommerce-users")


market <- read.csv("./Data/market")

View(market)
str(market)
summary(market)

View(data)
str(data)

summary(data)

#create plots and search from insights

library("ggplot2")

#correlation between x and y 

ggplot(data,aes(x=Time.on.Website,y=Yearly.Amount.Spent))+ 
  geom_point(color="blue") + 
  ggtitle("correlation between time on website and yearly amount spent") +
  xlab("Time on website ") +
  ylab("amount amount spent")

pairs(data[c("Avg..Session.Length",
             "Time.on.App",
             "Time.on.Website",
             "Length.of.Membership",
             "Yearly.Amount.Spent")],
      col="blue",
      pch=16,
      main="Pairplot of all continuous variables")

