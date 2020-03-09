data1<-read.csv('/Users/katherine/Downloads/vulcancoin-part1.csv')
data2<-read.csv('/Users/katherine/Downloads/vulcancoin-part2.csv')
data = rbind(data1,data2)
library(tidyr)
library(dplyr)
# change column from factor to numeric
market_cap<-data%>%filter(tx_from == 'Central Bank')%>%mutate(tx_amount_new=as.character(tx_amount))
market_cap$tx_amount_new = substr(market_cap$tx_amount_new,1,nchar(market_cap$tx_amount_new)-4)
market_cap<-market_cap%>%mutate(tx_amount_new = as.numeric(tx_amount_new))
# provided market cap, calculate value of one coin
31501094.2/sum(market_cap$tx_amount_new)
# clean NA data
data$tx_fee = data$tx_fee%>%replace_na(3)
# change column from factor to numeric
data<-data%>%mutate(tx_amount=as.character(tx_amount))
data$tx_amount = substr(data$tx_amount,1,nchar(data$tx_amount)-4)
# get coefficient of determination of transaction fee and transaction amount
data = data%>%mutate(tx_amount = as.numeric(tx_amount))
coin.lm = lm(data$tx_fee ~ data$tx_amount)
summary(coin.lm)$r.squared
