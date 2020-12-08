# Lending Club Project - Loan data analysis

As institutionalized loans become harder to avail following the 2008 Subprime mortgage crisis, 
certain individuals remain deprived for the opportunity to take a personal loan in spite of being amply able to repay it, 
simply because they do not fulfill the criteria set by the banking institutions for personal loans. 
This has given birth to the concept of Lending Club, a peer-to-peer online marketplace that allows borrowers to apply online for personal loans of up to 40000$. 
Lending Club allows investors to invest their capital on such applicants for a high return on investment. 
In this project, by analyzing its loan datasets, we can provide important indicators to investors regarding Lending Club loan applications currently under their considerations.

## Project Design & Workflow
### Motivation

Given the non-institutional nature of these loans, there is risk of loss of investment involved and it would not be a wise decision for small and medium investors to invest without conducting an in-depth analysis of this investment opportunity. 
EDA will be the first step towards helping investors to make wise decisions, which could reveal relationships within the data that could be leveraged by banking institutions or investors to have a surplus return on investment. 
Then we use machine learning models to predict loan default rate and compare the results to give the optimal model: the model predicting defaults could help to instruct the direction of a lending portfolio on the site. 
With a more short-term goal, we as small investors could also profit from investing on the right individuals based on the results of our analysis

### Objective and workflow
- Purpose of this project: help investors make wise decisions on their investment
- Analytical Tools:
    1. EDA & Visualization
    2. Using three machine learning models to predict loan default rate:
        random forest | logistic regression | XGBoost 
    3. Compare the results and give the optimal model: the model predicting defaults could help to instruct the direction of a lending portfolio on the site.


### Data 
Lending Club has made datasets publicly available on its website [LC Website](https://lendingclub.com/statistics/additional-statistics)
for investors to perform research which can be found on Lending Club Official Website
This project chose the data of the 2020 Q2 which contains 13,303 users with 150 features. To explore the impact of COVID-19 on LC's lending activity, I will choose time period before COVID for comparision in later stage.

### Data Cleaning & Preprocessing
- Missing value
- ordinal and nominal variables -> One Hot encoding
- Handle imbalanced data -> oversampling

### EDA
- Distribution, outliers
- Bivariate Analysis
- Correlation matrix -> exclude correlated feature -> avoid collinearity

### Modeling
- Logistic Regression
- Random Forest
    1. tune model by GridSearchCV
    2. find optimal model using scoring of Recall to maximize true possitive
- XGBoost

### Evaluation


Compare performances of different binary classification models on metrics of F1-score, Accuracy, AUC ROC
