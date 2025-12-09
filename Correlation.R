library(readr)
df <- read.csv("DGPT24.csv")

class(df)
summary(df)
#print(colnames(df))
      
#changing names of Columns which are possible for better understanding
colnames(df)[5]<-"parked_%"
colnames(df)[8]<-"fairway_%"
colnames(df)[9]<-"scramble_%"

print(colnames(df))

#Checking the types of Columns especially used in our Research Question

class(df$birdie_avg)
#as first Column C1X which is numeric and Our 2nd column total_earnings are integer type
class(df$C1X)
class(df$total_earnings)


#Now, removing the unrealistic values from Column C1X and total_earnings.
df <- df[df$C1X >= 0 & df$C1X <= 100, ]
df <- df[df$total_earning > 0, ]




