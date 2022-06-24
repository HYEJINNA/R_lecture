install.packages("dplyr")
install.packages("ggplot2")
library(dplyr)
library(ggplot2)
install.packages("readx1")
library(readxl)

seoulair <- read_excel("서울대기오염_2019.xlsx")

str(seoulair)



seoulair <- seoulair %>% 
  rename(date = "날짜",
         distinct = "측정소명",
         pm10 = "미세먼지",
         pm2.5 = "초미세먼지") %>% 
  select(date, distinct, pm10, pm2.5)

table(seoulair$date)

table(seoulair$distinct)

seoulair <- seoulair %>% filter(data!="전체" & distinct!="평균")

summary(seoulair$pm10)

summary(seoulair$pm2.5)

seoulair$month <- substr(seoulair$date, 6, 7)

seoulair$day <- substr(seoulair$date, 9, 10)

str(seoulair)


class(seoulair)