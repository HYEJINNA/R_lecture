#데이터 불러오기
# 경로 설정이 중요
#
getwd()
#setwd("c:")
#csv파일 / 엑셀파일
#P91
mpg1<-read.csv
setwd("C:/Users/User/Desktop/R_lecture/data")
mpg1<-read.csv("mpg1.csv", stringsAsFactors = F)
str(mpg1)
mpg1<-read.csv("mpg1.csv", stringsAsFactors = T)
str(mpg1)

#평균
mean(mtcars$mpg) #평균
var(mtcars$mpg) #분산
sd(mtcars$mpg) # 표준편차


#수리통계 --> 증명
#일반인 / 비전공자 --> 함수 활용 / 의미알고 있으면 됨
sd(mtcars$mpg)

Descriptive Statistcs

# 1반의 키의 표준편차
# 2반의 키의 표준편차
# 3반의 키의 표준편차

# 사분위수
# 전체수를 4등분한 수 
# IQR(중요) : 1사분위수와 3사분위수 사이의 거리 
# 통계분석 / 머신러닝 ===> 이상치를 제거 할때 사용

quantile(mtcars$mpg)

# 통계요약 구하기
summary(iris)

# 중간값 : 100명, 50번째 키순에 해당하는 값
# 평균 : 전체합/100


summary(iris$Sepal.Length)

# 빈도분석
# 범주별 빈도 -->문자

str(mpg1)

# 
table(mpg1$trans)
table(mpg1$manufacturer)
table(mpg1$trans, mpg1$manufacturer)

#빈도의 비율 구하기 
a <- table(mpg1$trans)
prop.table(a)

b <- table(mpg1$trans, mpg1$drv)
prop.table(b)

prop.table(table(mpg1$manufacturer))


# 행과 열의 비율 형식을 맞춘다
?prop.table

prop.table(b, margin = 1)
prop.table(b, margin = 2)

#소숫점 아래 자리 지정
round(0.32566222, 4)

a = table(mpg1$trans)
b = prop.table(a)
b
round(b, 2)
round(prop.table(table(mpg1$trans)), 2)


#시각화 이미지
# ggplot2 패키지 활용

# 테이블 이미지 
# gt 패키지 활용








