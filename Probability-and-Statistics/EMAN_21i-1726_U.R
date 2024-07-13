##   EMAN FURRUKH   ##
##     21I-1726     ##
##   Prob & Stats   ##
##   ASSIGNMENT 2   ##

                                    ##    QUESTION 1A    ##
x <- c(63,20,8,15)
labels <- c("LEGS", "WHEELS", "BOTH", "NEITHER")
b <- sum(x)
percentage <- round((x/b) * 100,1)
pie(x, labels = percentage, main = "Social Robots: WALK OR ROLL?",
    col= c("RED", "BLUE", "GREEN", "YELLOW"))
legend("left", c("LEGS","WHEELS","BOTH","NEITHER"), cex = 0.7,
       fill = c("RED", "BLUE", "GREEN", "YELLOW"))

                                    ##    QUESTION 1B   ##
barplot(x, names.arg=labels, main = "Social Robots: Walk or Roll?",
        xlab = "Type of Robots", ylab = "No. of robots", 
        col = c("RED", "BLUE", "GREEN", "YELLOW"))


                                    ##    QUESTION 2A   ##
data("women")
head(women)
summary(women)
barplot(women$height, names.arg = women$weight, main = "Average Heights and Weights for American Women" ,
        xlab = "Height (cm)", ylab = "Weight (kg)", col = "DarkBlue")
                                   
                                    ##    QUESTION 2B   ##
#install.packages("ggplot2")
#library(ggplot2)
#data("diamond")
#summary(diamond)
#mode(diamond)

                                    ##    QUESTION 3A   ##
x<- rpois(rnorm(50,20,5),50)
freq <- data.frame(table(x))
relFreq <- data.frame(prop.table(table(x)))
relFreq$Relative_Freq <- relFreq$Freq
relFreq$Freq <- NULL
Cumulative_Freq <- cumsum(table(x))
fd <- cbind(merge(freq, relFreq), Cumulative_Freq)
fd$Cumulative_Relative_Freq <- fd$Cumulative_Freq / sum(fd$Freq)
print(fd)
                                    ##    QUESTION 3B   ##
#histogram
hist.x=hist(x,main='Histogram and Frequency Polygon',breaks = 8,col = 'yellow')
#frequency polygon
x.axis=c(min(hist.x$breaks),hist.x$mids,max(hist.x$breaks))
y.axis=c(0,hist.x[["counts"]],0)
lines(x.axis,y.axis,type='l',col="red")


                                    ##    QUESTION 4A   ##
#library("readxl")
#getwd()
#x <- read_excel("C:/Users/DELL/OneDrive/Documents/prac/covid_19_data.xlsx")

#the code above kept giving error, so i imported excel file using "import data set"
library(readxl)
covid_19_data <- read_excel("covid_19_data.xlsx")
x <- covid_19_data
a <- x[ ,"Country/Region"]
print(a)
library("dplyr")
n_distinct(a)
                                    ##    QUESTION 4B   ##
#china <- data.frame(x$`Country/Region`<-"Mainland China")
#c <- x$`Country/Region` <- "Mainland China"
#l <- data.class(x)
#filter(l,x$`Province/State`)

library(dplyr)
filter(x$`Province/State`, (x$`Country/Region`=="Mainland China"))

                                    ##    QUESTION 4C   ##
summary(x["Country/Region"])
summary(x["Confirmed"])
summary(x["Deaths"])
summary(x["Recovered"])
summary(x["Province/State"])
summary(x["ObservationDate"])

                                    ##    QUESTION 4D   ##
con <- data.frame(x["Country/Region"] <- "South Australia")
attach(con)
par(mfrow=c(3,1))
hist(x$Recovered, xlab="Date", main="Recovered", col="navyblue",plot=TRUE)
hist(x$Deaths, main="Deaths", col="purple")
hist(x$Confirmed,main="Confirmed", col="darkgreen")

                                    ##    QUESTION 4E   ##
getwd()
covid_19_data <- read_excel("covid_19_data.xlsx")
head(covid_19_data)
summary(covid_19_data)
as.Date("2021-03-24")
s<-as.Date(covid_19_data$ObservationDate,"%m/%d/%Y")
s
w<- covid_19_data[as.Date(covid_19_data$ObservationDate, format="%m/%d/%Y") > as.Date("2021-03-24"),]
w
w <- subset(covid_19_data,as.Date(covid_19_data$ObservationDate, format="%m/%d/%Y") > as.Date("2021-01-1"),)
w
write.excel(w, file = "covid_19_data.xlsx")
