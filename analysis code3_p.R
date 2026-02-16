# 필요한 패키지 설치 및 라이브러리 로드
library(psych)

# 데이터프레임 리스트 생성 (gu1부터 gu25까지)
gu_list <- list(gu1, gu2, gu3, gu4, gu5, gu6, gu7, gu8, gu9, gu10,
                gu11, gu12, gu13, gu14, gu15, gu16, gu17, gu18, gu19, gu20,
                gu21, gu22, gu23, gu24, gu25)

# 결과 데이터프레임 생성을 위한 빈 리스트
p_value_results <- list()

# 데이터프레임별로 p-value 계산 및 저장
for (i in 1:25) {
  event_col <- gu_list[[i]]$event
  life_col <- gu_list[[i]]$life
  do_leng_col <- gu_list[[i]]$do.leng
  do_num_col <- gu_list[[i]]$do.num
  count_col <- gu_list[[i]]$count
  
  p_value_event_life <- cor.test(event_col, life_col)$p.value
  p_value_event_do_leng <- cor.test(event_col, do_leng_col)$p.value
  p_value_event_do_num <- cor.test(event_col, do_num_col)$p.value
  p_value_event_count <- cor.test(event_col, count_col)$p.value
  
  p_value_results[[i]] <- data.frame(
    code = i,
    event_life_p = p_value_event_life,
    event_do_leng_p = p_value_event_do_leng,
    event_do_num_p = p_value_event_do_num,
    event_count_p = p_value_event_count
  )
}

# 리스트를 하나의 데이터프레임으로 합치기
p_value_results_df <- do.call(rbind, p_value_results)

# 결과 출력
print(p_value_results_df)


#-----------------------------------
#파일출력
install.packages("openxlsx")
library(openxlsx)
write.xlsx(cor.gu, file = "D:/minseon/go/data_new/완성파일/상관관계_수정_p.xlsx")

## 상관관계 그래프 맵
x <- cor(gu18[, c(1, 2, 3, 6)])
corrplot(x, addCoef.col="black",method = "square",tl.col = "black", col=colorRampPalette(c("#80B1D3", "#FB8072"))(200), type = "lower",tl.cex = 0.8,tl.srt = 0)
## main = "강남구"

## p-value 값 구하기
y <- cor.test(gu18[,2], gu18[,6])
y$estimate
y$p.value

#event,life
y <- cor.test(gu1[,2], gu1[,3])
y$estimate
y$p.value
#event,do.leng
y <- cor.test(gu1[,2], gu1[,4])
y$estimate
y$p.value
#event,do.num
y <- cor.test(gu1[,2], gu1[,5])
y$estimate
y$p.value
#event,count
y <- cor.test(gu1[,2], gu1[,6])
y$estimate
y$p.value
