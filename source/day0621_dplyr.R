# p.98
# 분석프로세스

# 데이터 전처리를 위한 도구 dplyr
# 데이터 전처리를 위한 도구 data.table

# 처리 속도 차이 
# dplyr : 10GB 이내
# data.table : 50GB 이상

# 배움의 측면
# dplyr 매우쉬움
# data.table 어려움(강사님 경우 실무에서 별로 쓸일 없었음)

#라이브러리 불러오기
install.packages("dplyr")
library(dplyr)

mpg1 <- read.csv("mpg1.csv", stringsAsFactors = F)

str(mpg1)
data2 <- mpg1 %>%
  select(drv, cty, hwy) %>%
  filter(drv == "f")
 

# select : 컬럼명 추출
# filet : 행추출 (조건식)
# Gruop by : 
# summarize():
  
  
# 교재 P99-P120
# 파생변수 (원래 없던 데이터 예>총매출액, 영업이익)
# 파생변수를 잘 만들어야 분석에 도움이 됨( 중요 )

#변수이름바꾸기 
mpg1_newname1 <- mpg1 %>% 
rename(transmisson=trans, drive_method=drv, city=cty, highway=hwy)

str(mpg1_newname1)

count(mpg1, trans)
class(count(mpg1,trans))
table(mpg1$trans)
class(table(mpg1$trans))

# 비교값이 같은 데이터 추출
mpg1_hd1 <- mpg1 %>% filter(manufacturer=="hyundai")
str(mpg1_hd1)

max(mpg1$cty)

#비교값이 다른 데이터 추출
mpg1_no_hd1 <- mpg1 %>% filter(manufacturer!="hyundai")
str(mpg1_no_hd1)

median(mpg1$cty) # 중앙값


# 파생변수
mpg2 <- mpg1 %>% 
  mutate(total=cty+hwy)
str(mpg2)

mpg1$total <- mpg1$cty+mpg1$hwy
mpg1$mean <- (mpg1$cty+mpg1$hwy)/2

str(mpg1)

mpg1 <- mpg1 %>% select(-total, -mean) #2개변수 삭제제
str(mpg1)



# 데이터 미리보기/ 책에 없음
glimpse(iris)

iris %>%
  filter(Species != "setosa") %>%
  select(Sepal.Length, Sepal.Width) %>% 
  file(Sepal.Length > 5.0) %>% 
  mutate(total = Sepal.Length + Sepal.Width) -> data2
  


# p121 집단별 통계량
# 
mpg1 %>% 
  group_by(trans) %>% 
  summarise(avg = mean(cty)) #평균
, total = sum(cty) # 종합
, med = median(cty) # 중간값
, count = n())




mpg1 %>% summarise(m=mean(cty))
mean(mpg1$cty)

mpg1 %>% summarise(m=mean(cty), s=sum(cty), med=median(cty))

mpg1 %>% summarise(mean(cty), sum(cty), median(cty))#변수이름 미지정정

mpg1 %>% 
  group_by(trans) %>% 
  summarise(m=mean(cty))

mpg1 %>% 
  filter(trans=="auto") %>% 
  summarise(m=mean(cty))

mpg1 %>% 
  filter(trans=="manual") %>% 
  summarise(m=mean(cty))

mpg1 %>% 
  filter(trans=="auto"&drv=="4") %>% 
  summarise(m=mean(cty))

mpg1 %>% 
  group_by(trans,drv) %>% 
  summarise(m=mean(cty))

mpg1 %>% 
  group_by(drv,trans) %>% 
  summarise(m=mean(cty))

mpg1 %>% 
  group_by(trans) %>% 
  summarise(n=n())

mpg1 %>% 
  group_by(trans,drv) %>% 
  summarise(n=n(),m=mean(cty))


mpg1 %>% 
  group_by(trans) %>% #트랜스범주로 분류
  summarise(n=n()) %>%  #트랜스 범주별 데이터 빈도 구하기
  mutate(total=sum(n), 
         pct=n/total*100)
  







