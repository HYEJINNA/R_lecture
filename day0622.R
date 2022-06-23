library(dplyr)

glimpse(iris)

#결측치(p158)


mpg1 <- read.csv("mpg1.csv", stringsAsFactors = F)
cut_price <- diamonds %>% 
  group_by(cut) %>% 
  summarise(mean_price=mean(price))
cut_price


ggplot(data=cut_price, aes(x=cut, y=mean_price))+
  geom_col()

ggplot(data=diamonds, aes(x=carat))+
  geom_histogram()

range(diamonds$carat)

ggplot(data=diamonds, aes(x=carat))+
  geom_histogram(binwidth = 1)

ggplot(data=diamonds, aes(x=carat))+
  geom_histogram(binwidth = 0.01)

ggplot(data=diamonds, aes(x=carat))+
  geom_density()

ggplot(data=diamonds, aes(x=1, y=price))+
  geom_boxplot()

ggplot(data = diamonds, aes(x=cut, y=price))+
  geom_boxplot()

str(cars)

ggplot(data=cars, aes(x=speed, y=dist))+
  geom_line()

ggplot(data = economics, aes(x=date, y=unemploy))+
  geom_line()

ggplot(data = economics, aes(x=date, y=psavert))+
  geom_line()

ggplot()+
  geom_line(data = economics, aes(x=date, y=uempmed, color="red"))+
  geom_line(data=economics, aes(x=date, y=psavert))
