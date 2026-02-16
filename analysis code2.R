

## 회귀분석 돌리면

lm.gu1 <- lm(event.ga ~ count + length + number, data = gu.1)
summary(lm.gu1)

##2022회귀분석##
setwd("E:/minseon/go/data_new/완성파일")
event_all <- read.csv("event_all2.csv")
event_all$life <- event_all$life/1000

par(mfrow=c(2,2))
plot(event~life+do.leng+do.num+count,data=event_all)
lmfit=lm(event~life+do.leng+do.num+count,data=event_all)
plot(lmfit)
summary(lmfit)

abline(lmfit)
cor(event_all)
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
folder_path <- "D:/minseon/go/data_new/완성파일/gu"

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
attach(cor.gu)

library(psych)
pairs.panels(cor.gu)
plot(cor.gu)

library(corrplot)
corrplot(cor.gu, method = "circle")



all.cor <- left_join(cor.gu, gu, by = "code")
1.553308e-16

#파일출력
install.packages("openxlsx")
library(openxlsx)
write.xlsx(cor.gu, file = "D:/minseon/go/data_new/완성파일/상관관계_수정.xlsx")

## 상관관계 그래프 맵
x <- cor(gu18[, c(1, 2, 3, 6)])
corrplot(x, addCoef.col="black",method = "square",tl.col = "black", col=colorRampPalette(c("#80B1D3", "#FB8072"))(200), type = "lower",tl.cex = 0.8,tl.srt = 0)
## main = "강남구"

## p-value 값 구하기
y <- cor.test(gu18[,2], gu18[,6])
y$estimate
y$p.value

## 데이터 csv 저장
write.csv(gu1, file = "C:/Users/choi/Desktop/data/result/gu1.csv")
write.csv(gu2, file = "C:/Users/choi/Desktop/data/result/gu2.csv")
write.csv(gu3, file = "C:/Users/choi/Desktop/data/result/gu3.csv")
write.csv(gu4, file = "C:/Users/choi/Desktop/data/result/gu4.csv")
write.csv(gu5, file = "C:/Users/choi/Desktop/data/result/gu5.csv")
write.csv(gu6, file = "C:/Users/choi/Desktop/data/result/gu6.csv")
write.csv(gu7, file = "C:/Users/choi/Desktop/data/result/gu7.csv")
write.csv(gu8, file = "C:/Users/choi/Desktop/data/result/gu8.csv")
write.csv(gu9, file = "C:/Users/choi/Desktop/data/result/gu9.csv")
write.csv(gu10, file = "C:/Users/choi/Desktop/data/result/gu10.csv")
write.csv(gu11, file = "C:/Users/choi/Desktop/data/result/gu11.csv")
write.csv(gu12, file = "C:/Users/choi/Desktop/data/result/gu12.csv")
write.csv(gu13, file = "C:/Users/choi/Desktop/data/result/gu13.csv")
write.csv(gu14, file = "C:/Users/choi/Desktop/data/result/gu14.csv")
write.csv(gu15, file = "C:/Users/choi/Desktop/data/result/gu15.csv")
write.csv(gu16, file = "C:/Users/choi/Desktop/data/result/gu16.csv")
write.csv(gu17, file = "C:/Users/choi/Desktop/data/result/gu17.csv")
write.csv(gu18, file = "C:/Users/choi/Desktop/data/result/gu18.csv")
write.csv(gu19, file = "C:/Users/choi/Desktop/data/result/gu19.csv")
write.csv(gu20, file = "C:/Users/choi/Desktop/data/result/gu20.csv")
write.csv(gu21, file = "C:/Users/choi/Desktop/data/result/gu21.csv")
write.csv(gu22, file = "C:/Users/choi/Desktop/data/result/gu22.csv")
write.csv(gu23, file = "C:/Users/choi/Desktop/data/result/gu23.csv")
write.csv(gu24, file = "C:/Users/choi/Desktop/data/result/gu24.csv")
write.csv(gu25, file = "C:/Users/choi/Desktop/data/result/gu25.csv")

write.csv(event.ga, file = "C:/Users/choi/Desktop/data/result/event.ga.csv", fileEncoding = "cp949")
write.csv(event.pi, file = "C:/Users/choi/Desktop/data/result/event.pi.csv", fileEncoding = "cp949")
write.csv(do.leng, file = "C:/Users/choi/Desktop/data/result/do.leng.csv", fileEncoding = "cp949")

write.csv(all.cor, file = "C:/Users/choi/Desktop/data/result/cor.csv", fileEncoding = "cp949")
