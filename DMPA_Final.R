#Let the dataset be in the csv format- myFile.csv
sample <- read.csv("iecsefinal.csv")
sample
plot(sample,main="Representarion of the Dataset in n Dim ",col="blue")


#Data-App 
a1<- length(which(sample$Appdev=='yes'))
b1<- which(sample$Appdev=='yes')
my_graph1 <- ggplot(sample, aes(x=Person,y=sample$Appdev))+  geom_point(colour = "red")
my_graph1

#Data-Web
a2<- length(which(sample$Webdev=='yes'))
b2<- which(sample$Webdev=='yes')
my_graph1 <- ggplot(sample, aes(x=Person,y=sample$Webdev))+  geom_point(colour = "blue")
my_graph1

#Data-Design 
a3<- length(which(sample$Design=='yes'))
b3<- which(sample$Design=='yes')
my_graph1 <- ggplot(sample, aes(x=Person,y=sample$Design))+  geom_point(colour = "green")
my_graph1

#Data-CC 
a4<- length(which(sample$Research=='yes'))
b4<- which(sample$Research=='yes')
my_graph1 <- ggplot(sample, aes(x=Person,y=sample$Research))+  geom_point(colour = "pink")
my_graph1

#Data-Research
a5<- length(which(sample$CC=='yes'))
b5<- which(sample$CC=='yes')
my_graph1 <- ggplot(sample, aes(x=Person,y=sample$CC))+  geom_point(colour = "purple")
my_graph1


#Net frequency plot
domains <- c('APP','WEB', 'DESIGN', 'CC' ,'RESEARCH')
freq_domain <- c(a1,a2,a3,a4,a5)
freq_domain
plot(freq_domain, main="Domain-wise Frequency",
     xlab="Domain", ylab="Number of students",col="blue")




#Apriori
datainp = as(sample, "transactions");
datainp
rules = apriori(datainp, parameter=list(support=0.02, confidence=0.7))
rules
#applied apriori with support of 0.01 and confidence of 0.5
inspect(head(sort(rules, by="lift"),3))
plot(rules)
#obtain scatterplot for the various rules obtained above



#Sentiment Analysis
