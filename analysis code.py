import pandas as pd

# CSV 파일 불러오기
df = pd.read_csv('D:/minseon/go/data_new/완성파일/gu/2.csv')

# 상관 분석 수행
corr_matrix = df.corr()

# 상관 계수 출력
print(corr_matrix)
