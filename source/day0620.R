1+1
a = 1
b = 1
a + b

iris <- iris
str(iris)

num_vector = c(1, 2, 3)
num_vector2 = c(5, 6, 7)
num_vector[1] + num_vector2[1]

a<-1
a
class(a) #a유형확인

a <- c(1, 2, 3)
a

a<- "Hello"
a
a<-1
a
a <- 1
a
a<-"Hello"
a
#숫자형벡터

#문자형벡터
char_vector <- c("Hi" , "Hello")
char_vector
c<-c+1
c
class(char_vector)#벡터의 유형을 알 수 있다다

logical_vector <- c(TRUE, FALSE)
logical_vector

class(logical_vector)

a <- c(1,2)
class(a)
a <- c(1,2,"Hello")
class(a)

b<-c(TRUE,FALSE)
class(b)
b<-c(TRUE,FALSE,"TRUE")
class(b)

c<- c(1,2,TRUE,FALSE)
class(c)


# 명목형 자료형 Factor
locaiton_vector <- c("서울", "인천", "부산")
factor_location_vector <- factor(locaiton_vector)
factor_location_vector

class(factor_location_vector)
help(factor)

# 순서형 자료형 Factor
temperature_factor <- c("기온높음", 
                        "기온보통", 
                        "기온낮음", 
                        "기온높음", 
                        "기온보통", 
                        "기온보통")

temperature_factor

factor_temperature_factor <- factor(temperature_factor, 
                                    ordered = TRUE, 
                                    levels=c"기온보통", 
                                                "기온낮음", 
                                                "기온높음"))
factor_temperature_factor <- factor(temperature_factor, 
                                    ordered = TRUE, 
                                    levels  = c("기온보통", 
                                                "기온낮음", 
                                                "기온높음"))


## 데이터 프레임
#-엑셀 데이터
no = c(1,2,3,4,5)
sex = c("male","female","male","male","female")
korean = c(87,92,95,81,87)
exam = data.frame(no,sex,korean)


exam = data.frame(no,sex,korean)
exam





#데이터 타입
class(exam$sex)
exam$no
class(exam$korean)

str(exam)



science <- c(84,95) #science 벡터만들기기
exam_c <- data.frame(sex,korean,english,science) #sience변수추가

sex <- c("male","female")
korean <- c(87,92)
english <- c(88,95)

exam_a <- data.frame(sex,korean,english)
exam_a

exam_b <- data.frame(sex=c("male","female"),korean=c(87,92),english=c(88,95))
exam_b

science <- c(84,95) #science 벡터만들기기
exam_c <- data.frame(sex,korean,english,science)
exam_c

exam <- read.csv("exam.csv")

no = c(1,2,3,4,5)
sex = c("male","female","male","male","female")
korean = c(87,92,95,81,87)
exam = data.frame(no,sex,korean)


exam = data.frame(no,sex,korean)
exam

exam <- read.csv("exam.csv")


student <- c(A, B, C)

temperature_factor <- c("기온높음",
                        "기온보통",
                        "기온낮음",
                        "기온높음",
                        "기온보통",
                        "기온보통")
temperature_factor
factor_temperature_factor <- factor(temperature_factor,
                                    ordered = TRUE,
                                    levels  = c("기온보통",
                                                "기온낮음",
                                                "기온높음"))
factor_temperature_factor
class(factor_temperature_factor)
class(factor_location_vector)




student <- c("A","B","C")
height <- c(175,160,180)
weight <- c(70,55,77)

df = data.frame(student,height,weight)
df

df[1,3]
df[3,2]
df[2,c(2,3)]
df[,2]
df[c(1,2),c(2,3)]
sex <- c("male","female","male")
df1 <- data.frame(student, height, weight, sex)
df1

df1[,1]

# 데이터 내보내기 & 불러오기 (핵심) 원리이해하면됨
# 경로 
# 
write.csv(x = exam, file = "temp.csv") #저장경로확인안됨

?write.csv


getwd()

getwd()
write.csv(x = exam, file = "temp.csv") 

#문제:바탕화면에 dataset폴더생성, exam객체 저장하세요



# 데이터 불러오기
temp = read.csv("temp.csv")

temp = read.csv("dataset/temp.csv")

# p51
# R에서 예제파일 exam.csv를 객체exam으로 입력해서 설명
getwd() #현재 경로확인
exam <- read.csv(exam.csv)
getwd()
exam <- read.csv("exam.csv")

install.packages("ggplot2")
economics <- ggplot2::economics

# 여기서 잠깐 (p.66)
# 실무패키지

#install.packages("data.table")
library(data.table)
install.packages("data.table")

#공식문서 확인

# 엑셀파일 불러오기
install.packages("readxl")
library(readxl)


install.packages("studentl")
library(studentl)

read_excel("student_xl.xlsx")

# p68설명
read.csv("student1.csv")
read.csv("student1.csv", skip = 1)

# 엑셀파일에 있는 복수의 시트에서 특정시트 불러오기
read_excel("student1_xl.xlsx", sheet = 2)


# p69 txt파일 불러오기
# p73 SPSS파일 불러오기

install.packages("foreign")
library(foreign)


class(student)
as.data.frame(student) #형변환

# 5,6교시 
# 데이터 불러오기
# 경로 잘 잡는것이 매우 중요
# 

read.spss("student.sav")
class(student)







