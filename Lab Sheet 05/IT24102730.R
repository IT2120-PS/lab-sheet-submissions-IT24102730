setwd("C:\\Users\\user\\Desktop\\IT24102730")
Delivery_Times = read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")
fix(Delivery_Times)
attach(Delivery_Times)

histogram<-hist(Delivery_Time_.minutes.,main = "Histogram for Delivery Times(Minutes)", breaks = seq(20, 70, length = 5), right = TRUE)

names(Delivery_Times)[1] <- "DeliveryTime"

str(Delivery_Times)

hist_data <- hist(Delivery_Times$DeliveryTime,
                  breaks = seq(20, 70, length.out = 10),
                  right = FALSE,
                  plot = FALSE)
cum_freq <- cumsum(hist_data$counts)
breaks <- hist_data$breaks

plot(breaks, c(0, cum_freq),
     type = "l",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum_freq)))