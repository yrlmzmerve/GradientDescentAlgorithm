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
# List- ordered collection of multi mode objects
# Data Frame - two dimensional multi mode array 
# Factor : Integer backed list of categorical values

myvector <- c(34,56,42,34,13)
names(myvector) <- c("Jan","Feb","March","Apr","May")
print(myvector)

#output: 
# Jan   Feb March   Apr   May 
# 34    56    42    34    13 

#getting subsets of vector 

myvector[c(1,3,5)]
#  Jan March   May 
#  34    42    13 

# R da indexler 1 den başlar 


myvector[-c(1,3,5)]
# Feb Apr 
# 56  34 


# Aggreta Functions for vector 

length(myvector) # 5
sum(myvector) #179
diff(myvector)

#  Feb March   Apr   May 
#  22   -14    -8   -21 

sort(myvector)
# May   Jan   Apr March   Feb 
# 13    34    34    42    56 


# using with function for vector 
myvector <- c(34,56,39,150,44,208)

# getting numbers indexes that bigger than 100
which(myvector >100)
# 4 6

#getting numbers that bigger than 100
myvector[which(myvector >100)]
# 150 208


#create vector
myvector <- 1:12
myvector
# [1]  1  2  3  4  5  6  7  8 9 10 11 12


#create matrix 

myMatrix <- matrix(1:!2, ncol=3, nrow=4, byrow=TRUE)
myMatrix
#      [,1] [,2] [,3]
# [1,]    1    0    1
# [2,]    0    1    0
# [3,]    1    0    1
# [4,]    0    1    0


# create a 3d array
my3Darray <- array(1:12, dim=c(2,2,3))
my3Darray


# , , 1

# [,1] [,2]
# [1,]    1    3
# [2,]    2    4

# , , 2

# [,1] [,2]
# [1,]    5    7
# [2,]    6    8

# , , 3

# [,1] [,2]
# [1,]    9   11
# [2,]   10   12



# create a list

myList <- list(name="Ted",Age=53,job=c("Engineer","Specialist"))
myList

#output 
$name
[1] "Ted"

$Age
[1] 53

$job
[1] "Engineer"   "Specialist"


# Subsetting list
myList$Age
# 53


#Create a dataframe 

myDataFrame <- data.frame(Year = c(2014,2013,2012,2010), Region = c("west","east","west","east"), Sales = c(212,108,240,218))
myDataFrame


> myDataFrame
Year Region Sales
1 2014   west   212
2 2013   east   108
3 2012   west   240
4 2010   east   218



# Data Frame 'de %in% fonkssiyonu ile var mı yok mu kontrolü 

if('2012' %in% myDataFrame$Year){
  print("Doğru")
}else{
  print("Yanlış")
}



# Create factor 

myFactor <- factor(myDataFrame$Region, levels=c("west","east"))
myFactor

[1] west east west east
Levels: west east



