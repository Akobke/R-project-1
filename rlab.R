category <- c("Internet/Social Media","Work","Friends","Sports","Video Gaming","Family","Undistracted Chad","Other")
frequency <- c(150,140,60,47,36,31,20,16)
rel.frequency <- frequency/sum(frequency)
cum.freq <- c(1:length(frequency))
cum.freq[1] <- frequency[1]
rel.percentage <- 100*(rel.frequency) 
for(i in 2:length(frequency)){
	cum.freq[i] <- cum.freq[i-1]+frequency[i]
}
cum.rel.freq <- cum.freq/sum(frequency)

catagory.labels <- paste(category,"(",rel.percentage,"%)",sep="")
pie(frequency, labels = catagory.labels, main="distractions",cex=1.5)


table <- cbind(frequency,rel.frequency,cum.freq,cum.rel.freq)
rownames(table) <- category
colnames(table) <-
c("frequency","rel.frequency","cum.freq","cum.rel.freq")
print(table)

barplot(frequency, names.arg=category, col="pink", main="distractions")