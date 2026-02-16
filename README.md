# 자전거 교통사고와 자전거 관련 인프라의 관계성 탐색(2023)

• 서울시 자전거 교통사고 발생 건수와 잠재적 영향 요인(공공자전거, 자전거도로, 생활인구) 간의 통계 분석  
• 2018년부터 2021년까지 서울시 25개 자치구 데이터를 활용한 상관분석 및 회귀분석

---
## 📁 Directory Structure

```text
Bicycle-Accident-Factor-Statistics/
├── 📜 01_preprocess_bike_data.R          # [Step 1] 원시 데이터 전처리
│   ├── Load CSV Files                    # 따릉이 월별 이용정보 로드 (2018-2021)
│   ├── Station-District Mapping          # 대여소 번호와 자치구 매칭
│   └── Aggregation by District           # 자치구별 이용 횟수 집계
│                                          # → 출력: count_2018.csv ~ count_2021.csv
│
├── 📜 02_integrate_district_data.R       # [Step 2] 자치구별 데이터 통합
│   ├── Load Multiple Data Sources        # 교통사고, 도로, 이용 데이터 로드
│   ├── Merge by District Code            # 25개 자치구별로 데이터 결합
│   ├── Calculate Total Events            # event.ga + event.pi = event
│   └── Create District DataFrames        # gu1 ~ gu25 데이터프레임 생성
│                                          # → 출력: gu1.csv ~ gu25.csv
│
├── 📜 03_correlation_regression_analysis.R  # [Step 3] 통계 분석 (메인)
│   ├── Correlation Analysis              # 자치구별 상관분석
│   ├── Regression Modeling               # event ~ life + do.leng + do.num + count
│   ├── Visualization                     # corrplot을 이용한 상관계수 시각화
│   └── Export Results                    # 상관관계 행렬 저장
│                                          # → 출력: 상관관계_수정.xlsx
│
├── 📜 04_calculate_pvalues.R             # [Step 4] 유의성 검정
│   ├── P-value Calculation               # 25개 자치구 각각의 p-value 산출
│   ├── Statistical Significance Test     # 변수 간 상관관계 유의성 검증
│   └── Export P-values                   # p-value 결과 저장
│                                          # → 출력: 상관관계_수정_p.xlsx
│
└── 📜 correlation_analysis_python.py     # [Optional] Python 버전 상관분석
    └── Correlation Matrix                # pandas를 이용한 상관계수 행렬 계산
```
---

## 📊 분석 방법론

### 1. 데이터 수집 및 전처리
- **공공자전거(따릉이) 이용 데이터**: 2018~2021년 월별 이용정보를 대여소별로 집계
- **자전거 교통사고 데이터**: 가해 및 피해 사고 건수를 자치구별로 통합
- **자전거 인프라 데이터**: 자전거도로 길이 및 개수
- **생활인구 데이터**: 서울시 자치구별 생활인구 통계
<img width="870" height="569" alt="image" src="https://github.com/user-attachments/assets/1aad383c-da4c-4033-a1be-0df1f264fabb" />


### 2. 통계 분석
- **상관분석 (Correlation Analysis)**: 
  - 25개 자치구별로 교통사고와 각 변수 간의 상관계수 산출
  - `corrplot` 패키지를 활용한 상관관계 시각화

- **회귀분석 (Regression Analysis)**:
  - 종속변수: 자전거 교통사고 건수 (`event`)
  - 독립변수: 생활인구(`life`), 도로길이(`do.leng`), 도로수(`do.num`), 이용횟수(`count`)
  - 모델: `event ~ life + do.leng + do.num + count`
  - 결과: R² = 0.7569, p-value = 6.335e-06 (통계적으로 유의미)

- **유의성 검정**:
  - 각 자치구별 변수 간 p-value 계산
  - 상관관계의 통계적 유의성 검증
<img width="960" height="628" alt="다공산성 그래프" src="https://github.com/user-attachments/assets/4765cbd0-93b3-463f-9121-ae3fcf115e56" />




### 3. 분석 결과
<img width="586" height="362" alt="다중회귀분석2" src="https://github.com/user-attachments/assets/02dd2ae4-9286-460b-a321-57f4ff1a8701" />
- 생활인구가 많을수록 자전거 교통사고 발생이 증가하는 경향 (p < 0.05)
- 자전거도로 개수는 교통사고와 양의 상관관계를 보임 (p < 0.05)
- 공공자전거 이용 횟수는 교통사고와 유의미한 관계를 나타냄 (p < 0.01)
- 회귀모델은 전체 변동성의 약 75.7%를 설명

---

