library("ggplot2")
library("tidyr")

d<-mtcars
d %>% str()

library(purrr)
d %>% keep(is.numeric) %>% head()

d$X<-is.character(d$X)

#Q.1 Histogram for all variables in a dataset mtcars.
d %>%
  keep(is.numeric) %>% 
  gather() %>% 
  ggplot(aes(value)) +
  facet_wrap(~ key, scales = "free") +
  geom_histogram()

#Q2.Check the probability distribution of all variables in mtcars.
pi<- lm(mpg~cyl+disp+hp+drat+wt+qsec+vs+am+gear+carb, data=mtcars)
summary(pi)

#Q.3 Write a program to create boxplot for all variables.
boxplot(d[,-1], col=heat.colors(12))



