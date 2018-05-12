returns <- read.csv("/Users/ulybinaleksandr/Downloads/Series.csv")
returns <- ts(returns)

library(urca)

sink("/Users/ulybinaleksandr/Downloads/output.txt")
for (name in colnames(returns)[2:10])
  
{
  print(name)
  urtest1 <- ur.df(returns[, name], selectlags =  "AIC", type = 'none')
  print(summary(urtest1))
}