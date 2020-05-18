MyString <- "R Language"
print(MyString)

getwd()
setwd("C:/Users/vier-/Documents/Kurslar/Gradient Descent _ Makine Öðrenmesi ve Yapay Zeka")
data <- read.csv("decision_tree.csv", header=TRUE, stringsAsFactors = FALSE)
head(data)

#output: 
# 1   2;80
# 2   3;70
# 3   4;60
# 4   5;50
# 5   6;40
# 6   7;30


# install.packages("forecast")
library(forecast)

# Vector : one dimensional single array
# matrix : two dimensional single array
# Array - N dimensional single mode array
# LÝst- ordered collection of multi mode objects
# Data Frame - two dimensional multi mode array 
# Factor : Integer backed list of categorical values

myvector <- c(34,56,42,34,13)
names(myvector) <- c("Jan","Feb","March","Apr","May")
print(myvector)

#output: 
# Jan   Feb March   Apr   May 
# 34    56    42    34    13 



