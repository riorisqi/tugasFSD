#NAMA: Rio Risqi Akbar Herlambang
#NIM: 19523031

#SOAL STATISTIKA
install.packages("ISLR")
library(ISLR)
dataCredit <- Credit
head(dataCredit)


#no.1
#mean and median of Rating
mean(dataCredit$Rating)
median(dataCredit$Rating)

#mean and median of Cards
mean(dataCredit$Cards)
median(dataCredit$Cards)

#mean and median of Age
mean(dataCredit$Age)
median(dataCredit$Age)


#no.2
install.packages("lsr")
library(lsr)

#mode of Gender
modeOf(dataCredit$Gender)

#mode of Student
modeOf(dataCredit$Student)

#mode of Married
modeOf(dataCredit$Married)


#no.3
#percentile 10
quantile(x = dataCredit$Education, probs = 0.10)

#percentile 37
quantile(x = dataCredit$Education, probs = 0.37)

#percentile 91
quantile(x = dataCredit$Education, probs = 0.91)


#no.4
#quartile of balance
quantile(x = dataCredit$Balance, probs = c(0.25, 0.50, 0.75))

#boxplot of balance quartile
boxplot(dataCredit$Balance)


#no.5
#correlation and scatter plot between Limit and Rating
newData <- data.frame(limit = dataCredit$Limit, rating = dataCredit$Rating)
newData

cor(newData)
plot(newData$limit, newData$rating)

#correlation and scatter plot between Age and Cards
newData <- data.frame(age = dataCredit$Age, cards = dataCredit$Cards)
newData

cor(newData)
plot(newData$age, newData$cards)

#correlation and scatter plot between Age and Cards
newData <- data.frame(income = dataCredit$Income, education = dataCredit$Education)
newData

cor(newData)
plot(newData$income, newData$education)



#SOAL PROBABILITAS
#no.1

#Soal
#Ambil sepuluh kartu secara acak satu per satu dari satu set kartu remi tanpa kartu joker,
#dan menaruhnya kembali setiap pengambilan satu kartu.  Dari satu set kartu, terdapat empat 
#jenis kartu di dalamnya yang terdiri dari kartu keriting, kartu wajik, 
#kartu hati, dan kartu sekop. X adalah jumlah kartu wajik yang diambil.
#Probabilitas terambilnya satu kartu wajik adalah 1/4, Tentukan probabilitas 
#X = 4 kartu wajik dari 10 kali pengambilan!

dbinom(x = 4, size = 10, prob = 1/4)

#probabilitas kumulatif
pbinom(q = 4, size = 10, prob = 1/4)

#nilai presentil 50
qbinom(p = 0.50, size = 10, prob = 1/4)

#simulasi 50 binomial random variabel
rbinom(n = 50, size = 10, prob = 1/4)
