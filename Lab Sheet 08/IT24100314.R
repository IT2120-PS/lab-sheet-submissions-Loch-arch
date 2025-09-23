setwd("C:\\Users\\loch2\\OneDrive\\Desktop\\IT24100314")

data<-read.table("Data - Lab 8.txt", header = TRUE)
fix(data)
attach(data)

##Question 1
popmn<-mean(Nicotine)
popvar<-var(Nicotine)


##Question 2
samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.mean<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

##Question 3
samplemean<-mean(s.mean)
samplevars<-var(s.mean)

##Question 4
popmn
samplemean

#Question 5
truevar = popvar/5
samplevars


#Exercise

##Querstion 1
data<-read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

pop_mean <- mean(Weight.kg.)
pop_sd   <- sd(Weight.kg.)

pop_mean
pop_sd

##Question 2
samples <- matrix(nrow = 6, ncol = 25)   
for(i in 1:25){
  samples[, i] <- sample(Weight.kg., 6, replace = TRUE)
}

colnames(samples) <- paste0("S", 1:25)

s_means <- apply(samples, 2, mean)
s_sds   <- apply(samples, 2, sd)

s_means
s_sds

##Question 3
sample_mean <- mean(s_means)

sample_sd <- sd(s_means)

sample_mean
sample_sd

theoretical_sd <- pop_sd / sqrt(6)
theoretical_sd