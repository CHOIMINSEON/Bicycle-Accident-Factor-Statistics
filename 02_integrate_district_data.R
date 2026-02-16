install.packages("corrplot")
library(corrplot)

install.packages("RColorBrewer")
library(RColorBrewer)

setwd("data")
load("cor_data.RData")

## 데이터 가공 ####
count_2018 <- read.csv("count_2018.csv")
count_2019 <- read.csv("count_2019.csv")
count_2020 <- read.csv("count_2020.csv")
count_2021 <- read.csv("count_2021.csv")

count <- cbind(count_2018, count_2019, count_2020, count_2021)
count <- count[, c(2,3,6,9,12)]
colnames(count) <- c("gu", 2018, 2019, 2020, 2021)
count <- count[-26, ]

setwd("C:/Users/choi/Desktop/data/doro")
dd <- list.files()
do.leng <- read_excel(dd[2])
do.leng <- as.data.frame(do.leng)

do.num <- read_excel(dd[4])
do.num <- as.data.frame(do.num)

setwd("event")
dd <- list.files()
event.ga <- read_excel(dd[2])
event.ga <- as.data.frame(event.ga)

event.pi <- read_excel(dd[4])
event.pi <- as.data.frame(event.pi)

gu <- data.frame("code" = c(1:25), "gu" = c(0))
gu[, 2] <- unique(count[, 1])
gu[, 1] <- 1:25

colnames(do.leng) <- c("gu", 2017, 2018, 2019, 2020, 2021)
colnames(do.num) <- c("gu", 2017, 2018, 2019, 2020, 2021)
colnames(event.ga) <- c("gu", 2017, 2018, 2019, 2020, 2021)
colnames(event.pi) <- c("gu", 2017, 2018, 2019, 2020, 2021)

do.leng <- do.leng[, -2]
do.num <- do.num[, -2]
event.ga <- event.ga[, -2]
event.pi <- event.pi[, -2]

do.leng1 <- left_join(do.leng, gu, by ="gu")
do.num1 <- left_join(do.num, gu, by ="gu")
event.ga1 <- left_join(event.ga, gu, by = "gu")
event.pi1 <- left_join(event.pi, gu, by = "gu")
count1 <- left_join(count, gu, by = "gu")

gu.1 <- rbind(count1[count1[6] == 1, ], do.leng1[do.leng1[6] == 1, ], 
              do.num1[do.num1[6] == 1, ], event.ga1[event.ga1[6] == 1, ], 
              event.pi1[event.pi1[6] == 1, ])
gu.1[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.2 <- rbind(count1[count1[6] == 2, ], do.leng1[do.leng1[6] == 2, ], 
              do.num1[do.num1[6] == 2, ], event.ga1[event.ga1[6] == 2, ], 
              event.pi1[event.pi1[6] == 2, ])
gu.2[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.3 <- rbind(count1[count1[6] == 3, ], do.leng1[do.leng1[6] == 3, ], 
              do.num1[do.num1[6] == 3, ], event.ga1[event.ga1[6] == 3, ], 
              event.pi1[event.pi1[6] == 3, ])
gu.3[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.4 <- rbind(count1[count1[6] == 4, ], do.leng1[do.leng1[6] == 4, ], 
              do.num1[do.num1[6] == 4, ], event.ga1[event.ga1[6] == 4, ], 
              event.pi1[event.pi1[6] == 4, ])
gu.4[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.5 <- rbind(count1[count1[6] == 5, ], do.leng1[do.leng1[6] == 5, ], 
              do.num1[do.num1[6] == 5, ], event.ga1[event.ga1[6] == 5, ], 
              event.pi1[event.pi1[6] == 5, ])
gu.5[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.6 <- rbind(count1[count1[6] == 6, ], do.leng1[do.leng1[6] == 6, ], 
              do.num1[do.num1[6] == 6, ], event.ga1[event.ga1[6] == 6, ], 
              event.pi1[event.pi1[6] == 6, ])
gu.6[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.7 <- rbind(count1[count1[6] == 7, ], do.leng1[do.leng1[6] == 7, ], 
              do.num1[do.num1[6] == 7, ], event.ga1[event.ga1[6] == 7, ], 
              event.pi1[event.pi1[6] == 7, ])
gu.7[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.8 <- rbind(count1[count1[6] == 8, ], do.leng1[do.leng1[6] == 8, ], 
              do.num1[do.num1[6] == 8, ], event.ga1[event.ga1[6] == 8, ], 
              event.pi1[event.pi1[6] == 8, ])
gu.8[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.9 <- rbind(count1[count1[6] == 9, ], do.leng1[do.leng1[6] == 9, ], 
              do.num1[do.num1[6] == 9, ], event.ga1[event.ga1[6] == 9, ], 
              event.pi1[event.pi1[6] == 9, ])
gu.9[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.10 <- rbind(count1[count1[6] == 10, ], do.leng1[do.leng1[6] == 10, ], 
              do.num1[do.num1[6] == 10, ], event.ga1[event.ga1[6] == 10, ], 
              event.pi1[event.pi1[6] == 10, ])
gu.10[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.11 <- rbind(count1[count1[6] == 11, ], do.leng1[do.leng1[6] == 11, ], 
              do.num1[do.num1[6] == 11, ], event.ga1[event.ga1[6] == 11, ], 
              event.pi1[event.pi1[6] == 11, ])
gu.11[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.12 <- rbind(count1[count1[6] == 12, ], do.leng1[do.leng1[6] == 12, ], 
              do.num1[do.num1[6] == 12, ], event.ga1[event.ga1[6] == 12, ], 
              event.pi1[event.pi1[6] == 12, ])
gu.12[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.13 <- rbind(count1[count1[6] == 13, ], do.leng1[do.leng1[6] == 13, ], 
              do.num1[do.num1[6] == 13, ], event.ga1[event.ga1[6] == 13, ], 
              event.pi1[event.pi1[6] == 13, ])
gu.13[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.14 <- rbind(count1[count1[6] == 14, ], do.leng1[do.leng1[6] == 14, ], 
              do.num1[do.num1[6] == 14, ], event.ga1[event.ga1[6] == 14, ], 
              event.pi1[event.pi1[6] == 14, ])
gu.14[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.15 <- rbind(count1[count1[6] == 15, ], do.leng1[do.leng1[6] == 15, ], 
              do.num1[do.num1[6] == 15, ], event.ga1[event.ga1[6] == 15, ], 
              event.pi1[event.pi1[6] == 15, ])
gu.15[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.16 <- rbind(count1[count1[6] == 16, ], do.leng1[do.leng1[6] == 16, ], 
              do.num1[do.num1[6] == 16, ], event.ga1[event.ga1[6] == 16, ], 
              event.pi1[event.pi1[6] == 16, ])
gu.16[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.17 <- rbind(count1[count1[6] == 17, ], do.leng1[do.leng1[6] == 17, ], 
              do.num1[do.num1[6] == 17, ], event.ga1[event.ga1[6] == 17, ], 
              event.pi1[event.pi1[6] == 17, ])
gu.17[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.18 <- rbind(count1[count1[6] == 18, ], do.leng1[do.leng1[6] == 18, ], 
              do.num1[do.num1[6] == 18, ], event.ga1[event.ga1[6] == 18, ], 
              event.pi1[event.pi1[6] == 18, ])
gu.18[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.19 <- rbind(count1[count1[6] == 19, ], do.leng1[do.leng1[6] == 19, ], 
              do.num1[do.num1[6] == 19, ], event.ga1[event.ga1[6] == 19, ], 
              event.pi1[event.pi1[6] == 19, ])
gu.19[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.20 <- rbind(count1[count1[6] == 20, ], do.leng1[do.leng1[6] == 20, ], 
              do.num1[do.num1[6] == 20, ], event.ga1[event.ga1[6] == 20, ], 
              event.pi1[event.pi1[6] == 20, ])
gu.20[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.21 <- rbind(count1[count1[6] == 21, ], do.leng1[do.leng1[6] == 21, ], 
              do.num1[do.num1[6] == 21, ], event.ga1[event.ga1[6] == 21, ], 
              event.pi1[event.pi1[6] == 21, ])
gu.21[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.22 <- rbind(count1[count1[6] == 22, ], do.leng1[do.leng1[6] == 22, ], 
              do.num1[do.num1[6] == 22, ], event.ga1[event.ga1[6] == 22, ], 
              event.pi1[event.pi1[6] == 22, ])
gu.22[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.23 <- rbind(count1[count1[6] == 23, ], do.leng1[do.leng1[6] == 23, ], 
              do.num1[do.num1[6] == 23, ], event.ga1[event.ga1[6] == 23, ], 
              event.pi1[event.pi1[6] == 23, ])
gu.23[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.24 <- rbind(count1[count1[6] == 24, ], do.leng1[do.leng1[6] == 24, ], 
              do.num1[do.num1[6] == 24, ], event.ga1[event.ga1[6] == 24, ], 
              event.pi1[event.pi1[6] == 24, ])
gu.24[, 1] <- c("count", "length", "number", "event.ga", "event.pi")

gu.25 <- rbind(count1[count1[6] == 25, ], do.leng1[do.leng1[6] == 25, ], 
              do.num1[do.num1[6] == 25, ], event.ga1[event.ga1[6] == 25, ], 
              event.pi1[event.pi1[6] == 25, ])
gu.25[, 1] <- c("count", "length", "number", "event.ga", "event.pi")


row.names(gu.1) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.2) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.3) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.4) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.5) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.6) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.7) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.8) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.9) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.10) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.11) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.12) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.13) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.14) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.15) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.16) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.17) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.18) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.19) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.20) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.21) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.22) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.23) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.24) <- c("count", "length", "number", "event.ga", "event.pi")
row.names(gu.25) <- c("count", "length", "number", "event.ga", "event.pi")

gu.1 <- gu.1[, -c(1, 6)]
gu.2 <- gu.2[, -c(1, 6)]
gu.3 <- gu.3[, -c(1, 6)]
gu.4 <- gu.4[, -c(1, 6)]
gu.5 <- gu.5[, -c(1, 6)]
gu.6 <- gu.6[, -c(1, 6)]
gu.7 <- gu.7[, -c(1, 6)]
gu.8 <- gu.8[, -c(1, 6)]
gu.9 <- gu.9[, -c(1, 6)]
gu.10 <- gu.10[, -c(1, 6)]
gu.11 <- gu.11[, -c(1, 6)]
gu.12 <- gu.12[, -c(1, 6)]
gu.13 <- gu.13[, -c(1, 6)]
gu.14 <- gu.14[, -c(1, 6)]
gu.15 <- gu.15[, -c(1, 6)]
gu.16 <- gu.16[, -c(1, 6)]
gu.17 <- gu.17[, -c(1, 6)]
gu.18 <- gu.18[, -c(1, 6)]
gu.19 <- gu.19[, -c(1, 6)]
gu.20 <- gu.20[, -c(1, 6)]
gu.21 <- gu.21[, -c(1, 6)]
gu.22 <- gu.22[, -c(1, 6)]
gu.23 <- gu.23[, -c(1, 6)]
gu.24 <- gu.24[, -c(1, 6)]
gu.25 <- gu.25[, -c(1, 6)]

gu.1 <- t(gu.1)
gu.1 <- as.data.frame(gu.1)

gu.2 <- t(gu.2)
gu.2 <- as.data.frame(gu.2)

gu.3 <- t(gu.3)
gu.3 <- as.data.frame(gu.3)

gu.4 <- t(gu.4)
gu.4 <- as.data.frame(gu.4)

gu.5 <- t(gu.5)
gu.5 <- as.data.frame(gu.5)

gu.6 <- t(gu.6)
gu.6 <- as.data.frame(gu.6)

gu.7 <- t(gu.7)
gu.7 <- as.data.frame(gu.7)

gu.8 <- t(gu.8)
gu.8 <- as.data.frame(gu.8)

gu.9 <- t(gu.9)
gu.9 <- as.data.frame(gu.9)

gu.10 <- t(gu.10)
gu.10 <- as.data.frame(gu.10)

gu.11 <- t(gu.11)
gu.11 <- as.data.frame(gu.11)

gu.12 <- t(gu.12)
gu.12 <- as.data.frame(gu.12)

gu.13 <- t(gu.13)
gu.13 <- as.data.frame(gu.13)

gu.14 <- t(gu.14)
gu.14 <- as.data.frame(gu.14)

gu.15 <- t(gu.15)
gu.15 <- as.data.frame(gu.15)

gu.16 <- t(gu.16)
gu.16 <- as.data.frame(gu.16)

gu.17 <- t(gu.17)
gu.17 <- as.data.frame(gu.17)

gu.18 <- t(gu.18)
gu.18 <- as.data.frame(gu.18)

gu.19 <- t(gu.19)
gu.19 <- as.data.frame(gu.19)

gu.20 <- t(gu.20)
gu.20 <- as.data.frame(gu.20)

gu.21 <- t(gu.21)
gu.21 <- as.data.frame(gu.21)

gu.22 <- t(gu.22)
gu.22 <- as.data.frame(gu.22)

gu.23 <- t(gu.23)
gu.23 <- as.data.frame(gu.23)

gu.24 <- t(gu.24)
gu.24 <- as.data.frame(gu.24)

gu.25 <- t(gu.25)
gu.25 <- as.data.frame(gu.25)


gu1 <- transform(gu.1, event = event.ga + event.pi)
gu2 <- transform(gu.2, event = event.ga + event.pi)
gu3 <- transform(gu.3, event = event.ga + event.pi)
gu4 <- transform(gu.4, event = event.ga + event.pi)
gu5 <- transform(gu.5, event = event.ga + event.pi)
gu6 <- transform(gu.6, event = event.ga + event.pi)
gu7 <- transform(gu.7, event = event.ga + event.pi)
gu8 <- transform(gu.8, event = event.ga + event.pi)
gu9 <- transform(gu.9, event = event.ga + event.pi)
gu10 <- transform(gu.10, event = event.ga + event.pi)
gu11 <- transform(gu.11, event = event.ga + event.pi)
gu12 <- transform(gu.12, event = event.ga + event.pi)
gu13 <- transform(gu.13, event = event.ga + event.pi)
gu14 <- transform(gu.14, event = event.ga + event.pi)
gu15 <- transform(gu.15, event = event.ga + event.pi)
gu16 <- transform(gu.16, event = event.ga + event.pi)
gu17 <- transform(gu.17, event = event.ga + event.pi)
gu18 <- transform(gu.18, event = event.ga + event.pi)
gu19 <- transform(gu.19, event = event.ga + event.pi)
gu20 <- transform(gu.20, event = event.ga + event.pi)
gu21 <- transform(gu.21, event = event.ga + event.pi)
gu22 <- transform(gu.22, event = event.ga + event.pi)
gu23 <- transform(gu.23, event = event.ga + event.pi)
gu24 <- transform(gu.24, event = event.ga + event.pi)
gu25 <- transform(gu.25, event = event.ga + event.pi)

##event.all##
event.all <- read.csv("event.all.csv", header = TRUE, fileEncoding = "CP949", encoding = "UTF-8")

## 데이터 분석 #####
## 이용자 수, 도로 수, 도로 넓이 증가
plot(x = 2018:2021, count[1, 2:5],col="navy",type="o",pch=19)
plot(x = 2018:2021, do.leng[1, 2:5],col="navy",type="o",pch=19)
plot(x = 2018:2021, do.num[1, 2:5],col="navy",type="o",pch=19)
plot(x = 2018:2021, event.ga[1, 2:5])
plot(x = 2018:2021, event.pi[1, 2:5])
plot(x = 2018:2021, event.all[1, 2:5],col="navy",type="o",pch=19)



## 회귀분석 돌리면

lm.gu1 <- lm(event.ga ~ count + length + number, data = gu.1)
summary(lm.gu1)

##2022회귀분석##
setwd("/완성파일")
event_life <- read.csv("event_life.csv")
plot(event~life,data=event_life)
lmfit=lm(event~life,data=event_life)
abline(lmfit)
cor(event_life)
y <- cor.test(event_life[,1], event_life[,2])
y$estimate
y$p.value

## 상관분석
## gu1, gu2, gu3...사용하면 됨
cor(gu2) ##상관분석
#산점도
pairs(all.cor)


#내 코드 
install.packages("data.table")
library(data.table)

# 파일이 저장된 폴더 경로
folder_path <- "/gu"

# 파일 개수와 이름에 따라 반복하여 데이터프레임 생성 및 저장
for (i in 1:25) {
  file_name <- paste0(folder_path, "/", i, ".csv")
  df_name <- paste0("gu", i)
  assign(df_name, as.data.frame(fread(file_name)))
}

# 결과 확인
print(gu1)   # gu1 데이터프레임 확인


cor.gu <- data.frame("code" = c(1:25), "life" = c(0), "length" = c(0), "number" = c(0),"count" = c(0))
cor.gu[1, 2:5] <- cor(gu1)[2, 3:6]
cor.gu[2, 2:5] <- cor(gu2)[2, 3:6]
cor.gu[3, 2:5] <- cor(gu3)[2, 3:6]
cor.gu[4, 2:5] <- cor(gu4)[2, 3:6]
cor.gu[5, 2:5] <- cor(gu5)[2, 3:6]
cor.gu[6, 2:5] <- cor(gu6)[2, 3:6]
cor.gu[7, 2:5] <- cor(gu7)[2, 3:6]
cor.gu[8, 2:5] <- cor(gu8)[2, 3:6]
cor.gu[9, 2:5] <- cor(gu9)[2, 3:6]
cor.gu[10, 2:5] <- cor(gu10)[2, 3:6]
cor.gu[11, 2:5] <- cor(gu11)[2, 3:6]
cor.gu[12, 2:5] <- cor(gu12)[2, 3:6]
cor.gu[13, 2:5] <- cor(gu13)[2, 3:6]
cor.gu[14, 2:5] <- cor(gu14)[2, 3:6]
cor.gu[15, 2:5] <- cor(gu15)[2, 3:6]
cor.gu[16, 2:5] <- cor(gu16)[2, 3:6]
cor.gu[17, 2:5] <- cor(gu17)[2, 3:6]
cor.gu[18, 2:5] <- cor(gu18)[2, 3:6]
cor.gu[19, 2:5] <- cor(gu19)[2, 3:6]
cor.gu[20, 2:5] <- cor(gu20)[2, 3:6]
cor.gu[21, 2:5] <- cor(gu21)[2, 3:6]
cor.gu[22, 2:5] <- cor(gu22)[2, 3:6]
cor.gu[23, 2:5] <- cor(gu23)[2, 3:6]
cor.gu[24, 2:5] <- cor(gu24)[2, 3:6]
cor.gu[25, 2:5] <- cor(gu25)[2, 3:6]

all.cor <- left_join(cor.gu, gu, by = "code")
1.553308e-16

#파일출력
install.packages("openxlsx")
library(openxlsx)
write.xlsx(cor.gu, file = "상관관계_수정.xlsx")

## 상관관계 그래프 맵
x <- cor(gu18[, c(1, 2, 3, 6)])
corrplot(x, addCoef.col="black",method = "square",tl.col = "black", col=colorRampPalette(c("#80B1D3", "#FB8072"))(200), type = "lower",tl.cex = 0.8,tl.srt = 0)
## main = "강남구"

## p-value 값 구하기
y <- cor.test(gu18[,2], gu18[,6])
y$estimate
y$p.value

## 데이터 csv 저장
write.csv(gu1, file = "gu1.csv")
write.csv(gu2, file = "gu2.csv")
write.csv(gu3, file = "gu3.csv")
write.csv(gu4, file = "gu4.csv")
write.csv(gu5, file = "gu5.csv")
write.csv(gu6, file = "gu6.csv")
write.csv(gu7, file = "gu7.csv")
write.csv(gu8, file = "gu8.csv")
write.csv(gu9, file = "gu9.csv")
write.csv(gu10, file = "gu10.csv")
write.csv(gu11, file = "gu11.csv")
write.csv(gu12, file = "gu12.csv")
write.csv(gu13, file = "gu13.csv")
write.csv(gu14, file = "gu14.csv")
write.csv(gu15, file = "gu15.csv")
write.csv(gu16, file = "gu16.csv")
write.csv(gu17, file = "gu17.csv")
write.csv(gu18, file = "gu18.csv")
write.csv(gu19, file = "gu19.csv")
write.csv(gu20, file = "gu20.csv")
write.csv(gu21, file = "gu21.csv")
write.csv(gu22, file = "gu22.csv")
write.csv(gu23, file = "gu23.csv")
write.csv(gu24, file = "gu24.csv")
write.csv(gu25, file = "gu25.csv")

write.csv(event.ga, file = "event.ga.csv", fileEncoding = "cp949")
write.csv(event.pi, file = "event.pi.csv", fileEncoding = "cp949")
write.csv(do.leng, file = "do.leng.csv", fileEncoding = "cp949")

write.csv(all.cor, file = "cor.csv", fileEncoding = "cp949")

