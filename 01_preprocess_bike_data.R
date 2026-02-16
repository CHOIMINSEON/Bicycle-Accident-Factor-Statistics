setwd("data")
list.files()
use1 <- list.files("csv/")
use2 <- list.files("use/")

use2

install.packages("readxl")
library("readxl")
install.packages("dplyr")
library(dplyr)
install.packages("progress")
library(progress)

setwd("C:/Users/choi/Desktop/data/csv")



aa2 <- read.csv(use1[2])
aa3 <- read.csv(use1[3])
aa4 <- read.csv(use1[4])
aa5 <- read.csv(use1[5])
aa6 <- read.csv(use1[6])
aa7 <- read.csv(use1[7])
aa8 <- read.csv(use1[8])
aa9 <- read.csv(use1[9])
aa10 <- read.csv(use1[10])
aa11 <- read.csv(use1[11])
aa12 <- read.csv(use1[12])
aa13 <- read.csv(use1[13])
aa14 <- read.csv(use1[14])
aa15 <- read.csv(use1[15])
aa16 <- read.csv(use1[16])
aa17 <- read.csv(use1[17])
aa18 <- read.csv(use1[18])


## use폴더에서 xlsx 파일 가져오기
pb <- progress_bar$new(
  format = "Current tick number :current / Total tick number :total, Elapsed time :elapsedfull",
  total = 42, # totalnumber of ticks to complete (default 100)
  clear = FALSE, # whether to clear the progress bar on completion (default TRUE)
  width= 80 # width of the progress bar
)

setwd("C:/Users/choi/Desktop/data/use")


for(i in 1:42) {
  assign(paste0("aa", i+18), read_excel(use2[i]))
  pb$tick()
}

setwd("C:/Users/choi/Desktop/data")

space <- read_excel("space.xlsx")
yy <- read_excel("tt.xlsx")
colnames(space) <- c("num", "gu")
colnames(yy) <- c("num", "gu")

space <- rbind(space, yy)

head(space)

space <- as.data.frame(space)

aa19 <- as.data.frame(aa19)
aa20 <- as.data.frame(aa20)
aa21 <- as.data.frame(aa21)
aa22 <- as.data.frame(aa22)
aa23 <- as.data.frame(aa23)
aa24 <- as.data.frame(aa24)
aa25 <- as.data.frame(aa25)
aa26 <- as.data.frame(aa26)
aa27 <- as.data.frame(aa27)
aa28 <- as.data.frame(aa28)
aa29 <- as.data.frame(aa29)
aa30 <- as.data.frame(aa30)
aa31 <- as.data.frame(aa31)
aa32 <- as.data.frame(aa32)
aa33 <- as.data.frame(aa33)
aa34 <- as.data.frame(aa34)
aa35 <- as.data.frame(aa35)
aa36 <- as.data.frame(aa36)
aa37 <- as.data.frame(aa37)
aa38 <- as.data.frame(aa38)
aa39 <- as.data.frame(aa39)
aa40 <- as.data.frame(aa40)
aa41 <- as.data.frame(aa41)
aa42 <- as.data.frame(aa42)
aa43 <- as.data.frame(aa43)
aa44 <- as.data.frame(aa44)
aa45 <- as.data.frame(aa45)
aa46 <- as.data.frame(aa46)
aa47 <- as.data.frame(aa47)
aa48 <- as.data.frame(aa48)
aa49 <- as.data.frame(aa49)
aa50 <- as.data.frame(aa50)
aa51 <- as.data.frame(aa51)
aa52 <- as.data.frame(aa52)
aa53 <- as.data.frame(aa53)
aa54 <- as.data.frame(aa54)
aa55 <- as.data.frame(aa55)
aa56 <- as.data.frame(aa56)
aa57 <- as.data.frame(aa57)
aa58 <- as.data.frame(aa58)
aa59 <- as.data.frame(aa59)
aa60 <- as.data.frame(aa60)


head(space)

## 2018
aa19 <- aa19[, 1:3]
aa20 <- aa20[, 1:3]
aa21 <- aa21[, 1:3]
aa22 <- aa22[, 1:3]
aa23 <- aa23[, 1:3]
aa24 <- aa24[, 1:3]
aa25 <- aa25[, 1:3]

colnames(aa19) <- c("date", "num", "space")
colnames(aa20) <- c("date", "num", "space")
colnames(aa21) <- c("date", "num", "space")
colnames(aa22) <- c("date", "num", "space")
colnames(aa23) <- c("date", "num", "space")
colnames(aa24) <- c("date", "num", "space")
colnames(aa25) <- c("date", "num", "space")


cc <- rbind(aa13, aa14, aa15, aa16, aa17, aa18, aa19, aa20, aa21, aa22, aa23, 
            aa24)
cc[, 2] <- as.numeric(cc[, 2])

bb2 <- left_join(cc, space, by = 'num')

dd <- bb2[is.na(bb2[, 4]) == T, ]

tt <- bb2 %>%
  group_by(gu) %>%
  summarise(count = n())
count_2018 <- data.frame(tt)


## 2019
aa25 <- aa25[, 1:2]
aa26 <- aa26[, 1:2]
aa27 <- aa27[, 1:2]
aa28 <- aa28[, 1:2]
aa29 <- aa29[, 1:2]
aa30 <- aa30[, 1:2]
aa31 <- aa31[, 1:2]
aa32 <- aa32[, 1:2]
aa33 <- aa33[, 1:2]
aa34 <- aa34[, 1:2]
aa35 <- aa35[, 1:2]
aa36 <- aa36[, 1:2]
aa37 <- aa37[, 1:2]

colnames(aa25) <- c("date", "num")
colnames(aa26) <- c("date", "num")
colnames(aa27) <- c("date", "num")
colnames(aa28) <- c("date", "num")
colnames(aa29) <- c("date", "num")
colnames(aa30) <- c("date", "num")
colnames(aa31) <- c("date", "num")
colnames(aa32) <- c("date", "num")
colnames(aa33) <- c("date", "num")
colnames(aa34) <- c("date", "num")
colnames(aa35) <- c("date", "num")
colnames(aa36) <- c("date", "num")
colnames(aa37) <- c("date", "num")

aa25[, 1] <- as.character(aa25[, 1])
aa26[, 1] <- as.character(aa26[, 1])
aa27[, 1] <- as.character(aa27[, 1])
aa28[, 1] <- as.character(aa28[, 1])
aa29[, 1] <- as.character(aa29[, 1])
aa30[, 1] <- as.character(aa30[, 1])
aa31[, 1] <- as.character(aa31[, 1])
aa32[, 1] <- as.character(aa32[, 1])
aa33[, 1] <- as.character(aa33[, 1])
aa34[, 1] <- as.character(aa34[, 1])
aa35[, 1] <- as.character(aa35[, 1])
aa36[, 1] <- as.character(aa36[, 1])
aa37[, 1] <- as.character(aa37[, 1])



cc <- rbind(aa25, aa26, aa27, aa28, aa29, aa30, aa31, aa32, aa33, aa34, aa35, aa36)

bb2 <- left_join(cc, space, by = 'num')

dd <- bb2[is.na(bb2[, 4]) == T, ]

tt <- bb2 %>%
  group_by(gu) %>%
  summarise(count = n())

count_2019 <- data.frame(tt)

## 2020
aa38 <- aa38[, 1:2]
aa39 <- aa39[, 1:2]
aa40 <- aa40[, 1:2]
aa41 <- aa41[, 1:2]
aa42 <- aa42[, 1:2]
aa43 <- aa43[, 1:2]
aa44 <- aa44[, 1:2]
aa45 <- aa45[, 1:2]
aa46 <- aa46[, 1:2]
aa47 <- aa47[, 1:2]
aa48 <- aa48[, 1:2]
aa49 <- aa49[, 1:2]


colnames(aa38) <- c("date", "num")
colnames(aa39) <- c("date", "num")
colnames(aa40) <- c("date", "num")
colnames(aa41) <- c("date", "num")
colnames(aa42) <- c("date", "num")
colnames(aa43) <- c("date", "num")
colnames(aa44) <- c("date", "num")
colnames(aa45) <- c("date", "num")
colnames(aa46) <- c("date", "num")
colnames(aa47) <- c("date", "num")
colnames(aa48) <- c("date", "num")
colnames(aa49) <- c("date", "num")


aa38[, 1] <- as.character(aa38[, 1])
aa39[, 1] <- as.character(aa39[, 1])
aa40[, 1] <- as.character(aa40[, 1])
aa41[, 1] <- as.character(aa41[, 1])
aa42[, 1] <- as.character(aa42[, 1])
aa43[, 1] <- as.character(aa43[, 1])
aa44[, 1] <- as.character(aa44[, 1])
aa45[, 1] <- as.character(aa45[, 1])
aa46[, 1] <- as.character(aa46[, 1])
aa47[, 1] <- as.character(aa47[, 1])
aa48[, 1] <- as.character(aa48[, 1])
aa49[, 1] <- as.character(aa49[, 1])


cc <- rbind(aa37, aa38, aa39, aa40, aa41, aa42, aa43, aa44, aa45, aa46, aa47, aa48)

bb2 <- left_join(cc, space, by = 'num')

dd <- bb2[is.na(bb2[, 4]) == T, ]

tt <- bb2 %>%
  group_by(gu) %>%
  summarise(count = n())
count_2020 <- data.frame(tt)



## 2021
aa50 <- aa50[, 1:2]
aa51 <- aa51[, 1:2]
aa52 <- aa52[, 1:2]
aa53 <- aa53[, 1:2]
aa54 <- aa54[, 1:2]
aa55 <- aa55[, 1:2]
aa56 <- aa56[, 1:2]
aa57 <- aa57[, 1:2]
aa58 <- aa58[, 1:2]
aa59 <- aa59[, 1:2]
aa60 <- aa60[, 1:2]

colnames(aa50) <- c("date", "num")
colnames(aa51) <- c("date", "num")
colnames(aa52) <- c("date", "num")
colnames(aa53) <- c("date", "num")
colnames(aa54) <- c("date", "num")
colnames(aa55) <- c("date", "num")
colnames(aa56) <- c("date", "num")
colnames(aa57) <- c("date", "num")
colnames(aa58) <- c("date", "num")
colnames(aa59) <- c("date", "num")
colnames(aa60) <- c("date", "num")

aa50[, 1] <- as.character(aa50[, 1])
aa51[, 1] <- as.character(aa51[, 1])
aa52[, 1] <- as.character(aa52[, 1])
aa53[, 1] <- as.character(aa53[, 1])
aa54[, 1] <- as.character(aa54[, 1])
aa55[, 1] <- as.character(aa55[, 1])
aa56[, 1] <- as.character(aa56[, 1])
aa57[, 1] <- as.character(aa57[, 1])
aa58[, 1] <- as.character(aa58[, 1])
aa59[, 1] <- as.character(aa59[, 1])
aa60[, 1] <- as.character(aa60[, 1])


cc <- rbind(aa49, aa50, aa51, aa52, aa53, aa54, aa55, aa56, aa57, aa58, aa59, aa60)

bb2 <- left_join(cc, space, by = 'num')

dd <- bb2[is.na(bb2[, 4]) == T, ]

tt <- bb2 %>%
  group_by(gu) %>%
  summarise(count = n())
count_2021 <- data.frame(tt)

write.csv(count_2018, file = "count_2018.csv")
write.csv(count_2019, file = "count_2019.csv")
write.csv(count_2020, file = "count_2020.csv")
write.csv(count_2021, file = "count_2021.csv")

