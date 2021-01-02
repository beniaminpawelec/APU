a <- 2 * log(5)
b <- a * 3
min(a,b)

a <- 25:45
mean(a)

apropos("mean", mode = "function")
 
setwd("~/Pulpit/Studia/APU/APU/Zadanie1/")

a <- "macbooki Apple"
save(a, file = "mac.RData")
remove(a)
a
load("mac.RData")
a


install.packages("gridExtra")
library(gridExtra)
help(package = "gridExtra")
grid.table(Orange[1:10, ])

seq(130, 200, 5)

a <- 19:5
b <- 11:23
d <- c(b, a)
d

Macbook <- c("mac1", "mac2", "mac3", "mac4", "mac5", "mac6","mac7", "mac8", "mac9", "mac10")
ekran <- c(17, 17, 17, 15,15,15,13,13,13,12)
pamięć_RAM <- c(17, 17, 17, 15,15,15,13,13,13,12)
dysk <- c(17, 17, 17, 15,15,15,13,13,13,12)
cena <- c(17, 17, 17, 15,15,15,13,13,13,12)
liczba_opinie <- c(17, 17, 17, 15,15,15,13,13,13,12)
apple <- data.frame(Macbook, ekran,pamięć_RAM, dysk,cena,liczba_opinie,stringsAsFactors = FALSE)
mean(apple$cena)

newmac <- data.frame(Macbook = "mac11", ekran = 25, pamięć_RAM= 25,dysk= 25, cena = 25, liczba_opinie=25)
apple <- rbind(apple, newmac)
apple
mean(apple$cena)

ocena <- c(0.5,1,1.5,2,2.5,3,3.5,4,4.5,5,1)
ocena
apple <- cbind(apple, ocena)

apple$ocena
tapply(apple$cena, apple$ocena, mean)

Macbook <- c("mac20", "mac21", "mac22", "mac23")
ekran <- c(20,21,22,23)
pamięć_RAM <-  c(20,21,22,23)
dysk <-  c(20,21,22,23)
cena <-  c(20,21,22,23)
liczba_opinie <-  c(77,100,200,23)
ocena <- c(1,5,3,2)
newmacs <- data.frame(Macbook, ekran,pamięć_RAM, dysk,cena,liczba_opinie,ocena,stringsAsFactors = FALSE)
apple <- rbind(apple, newmacs)
apple

liczebnosc <- table(apple$ocena)
barplot(liczebnosc)

procenty <- liczebnosc / sum(liczebnosc)
pie(procenty)
install.packages("plotrix")
library(plotrix)
fan.plot(liczebnosc, labels = names(liczebnosc))

apple[, "status_opinii"] <- ifelse(apple$liczba_opinie >= 100, "więcej niz 100 opinii",
                     ifelse(apple$liczba_opinie >= 50, "50 - 100 opinii",  
                     ifelse((apple$liczba_opinie >= 0) & (apple$liczba_opinie <= 50), "mniej niz 50", "nie ma" )))

apple

apple$status_opinii <- factor(apple$status_opinii)
pie(table(apple$status_opinii))

paste(apple$Macbook, "ma ocene klientow", apple$ocena, "bo ma opinii", apple$liczba_opinie)

write.csv(apple,'MacBooks.csv')

read.csv('MacBooks.csv')
