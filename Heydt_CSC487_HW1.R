#* Trevor Heydt
#* CSC487, Homework 1
#* Last Edited: 01/20/2024

# Problem 1
setwd("/Users/trevorheydt/Desktop/UM FLINT/Winter 2024/CSC487/Heydt_CSC487_HW1")
  #1a
su <- read.delim("Su_raw_matrix.txt") #Reads Su_raw_matrix.txt into the variable su
  #1b
mean(su$Liver_2.CEL) #Takes the mean of the Liver_2.CEL column of su
sd(su$Liver_2.CEL) #Takes the standard deviation of the Liver_2.CEL column of su
  #1c
colMeans(su) #Takes the average of each column of su
colSums(su) #Sums each column of su

# Problem 2
library('ggplot2')
  #2a
dis1 <- data.frame(dis2a=rnorm(10000,mean=0,sd=.2)) #creates distribution
ggplot(dis1, aes(x=dis2a)) +
     geom_histogram(binwidth = .01) #plots distribution
  #2b
dis2 <- data.frame(dis2b=rnorm(10000,mean=0,sd=.5)) #creates distribution
ggplot(dis2, aes(x=dis2b)) +
     geom_histogram(binwidth = .01) #plots distribution
#* These two plots look very similar in shape, but looking at the x & y axes, 
#* we can clearly see that the first distribution is much more concentrated
#* than the second. The first distribution has much higher counts in each
#* bar of the histogram, and extends much less along the x-axis.

# Problem 3
  #3f(a)
diabetes <- read.csv("diabetes_train.csv") #Reads diabetes_train.csv into the variable diabetes
  #3f(b) Overlaid Histograms
ggplot(diabetes, aes(x=mass, fill=class)) + geom_histogram(binwidth=.5, alpha=.5, position="identity")
  #3f(c) Interleaved Histograms
ggplot(diabetes, aes(x=mass, fill=class)) + geom_histogram(binwidth=.5, position="dodge")
  #3f(d) Density Plots
ggplot(diabetes, aes(x=mass, colour=class)) + geom_density()
  #3f(e) Density Plots w/ Semitransparent Fill
ggplot(diabetes, aes(x=mass, fill=class)) + geom_density(alpha=.3)

#Problem 4
passengers <- read.csv("titanic.csv") #Reads titanic.csv into the variable passengers
library(dplyr) #Imports dplyr library
library(tidyr) #Imports tidyr librayry
  #4a This gives the 5-number summary and mean for each numeric variable, as well as a short summary of each qualitative column of the dataframe
  #4b This displays only the male passengers
  #4c This displays all passengers ordered by their fare, decreasing
  #4d This displays all passengers with the added column of FamSize, which is the sum of the columns SibSp & Parch
  #4e This displays summary statistics for female passengers and for male passengers, 
    # specifically the average Fare for each group and the total Survivors from each group

#Problem 5
quantile(diabetes$skin, probs=seq(.1,.6,.1)) #Gives percentiles of skin column of diabetes for every 10th percentile from 10% to 60%
  # From this, we can see the 10th percentile is 0, 
  # the 30th percentile is 10,
  # the 50th percentile is 23,
  # and the 60th percentile is 27.

