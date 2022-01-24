car <- read.table("Car.Mileage.txt")
car <- car[,1] 

print(carmean <- mean(car))
print(carmedian <- median(car))
print(carIQR <- IQR(car))
carSort <- sort(car)
print(trimmedMean <- mean(carSort, trim=.1))

#hist(car, breaks=65, col="red", main="Car Mileage")
#boxplot(car, main = "Box and Whiskers plot of Car Mileage Data")
outlierLeft <- car[car < carmean - 1.5*carIQR]
outlierRight <- car[car > carmean + 1.5*carIQR]
print(outlierLeft[1])
print(outlierRight[1])

if(carmean > carmedian){
    print("Data is right skewed")
}
if(carmean < carmedian){
    print("Data is left skewed")
}
Cumul.Mileage <- c(1:30)
for (i in 1:30)
{
Cumul.Mileage[i] <- length(car[car<=i*10000])
}
## Plot graph!
x <- c(1:30)*10000
plot(x,Cumul.Mileage/length(car))
## Proportion of car mileages <= 100,000.
proportion <- length(car[car<=120000])/length(car)
print(proportion)

print(sort(car)[7])
print(sort(car)[length(car)- 6])