setwd("C:/Users/loch2/OneDrive/Desktop/IT24100314")

DeliveryTimes <- read.table("Exercise - Lab 05.txt", header = TRUE)
View(DeliveryTimes)




breaks <- seq(20, 70, length.out = 10)   

hist(DeliveryTimes$Delivery_Time_.minutes., 
     breaks = breaks, 
     right = FALSE, 
     col = "lightblue", 
     main = "Histogram of Delivery Times", 
     xlab = "Delivery Times (minutes)")



breaks <- seq(20, 70, length.out = 10)

hist_data <- hist(DeliveryTimes$Delivery_Time_.minutes., 
                  breaks = breaks, 
                  plot = FALSE, 
                  right = FALSE)

cum_freq <- cumsum(hist_data$counts)

plot(hist_data$breaks[-1], cum_freq, type = "o", 
     col = "blue", 
     main = "Cumulative Frequency Polygon (Ogive)", 
     xlab = "Delivery Times (minutes)", 
     ylab = "Cumulative Frequency")


