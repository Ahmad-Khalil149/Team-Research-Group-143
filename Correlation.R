library(readr)
DGPT24 <- read.csv("DGPT24.csv")

class(DGPT24)
summary(DGPT24)
#print(colnames(DGPT24))
      
#changing names of Columns which are possible for better understanding
colnames(DGPT24)[5]<-"parked_%"
colnames(DGPT24)[8]<-"fairway_%"
colnames(DGPT24)[9]<-"scramble_%"

print(colnames(DGPT24))

#Checking the types of Columns especially used in our Research Question

class(DGPT24$birdie_avg)
#as first Column C1X which is numeric and Our 2nd column total_earnings are integer type
class(DGPT24$C1X)
class(DGPT24$total_earnings)


#Now, removing the unrealistic values from Column C1X and total_earnings.
DGPT24 <- DGPT24[DGPT24$C1X >= 0 & DGPT24$C1X <= 100, ]
DGPT24 <- DGPT24[DGPT24$total_earning > 0, ]

#Now check that the data is normal or not
hist(DGPT24$C1X, main="Histogram of C1X", xlab="C1X", col="green", border="black")
hist(DGPT24$total_earnings, main="Histogram of Total Earnings", xlab="Total Earnings", col="yellow", border="black")



