data = read.csv("GOP Nomination Data.csv")  
data = data[sort(data$Index, decreasing = TRUE),]

plot(data$Trump, type = "l", ylab = "", xlab = "", xaxt = "n", col = "white", lwd = 2)
axis(1, at= 1:length(data$Index), labels=data$Date)

lines(data$Carson, type = "l", col = "red", lwd = 2)
lines(data$Bush, type = "l", col = "darkolivegreen", lwd = 2)
lines(data$Rubio, type = "l", col = "deepskyblue1", lwd = 2)
lines(data$Cruz, type = "l", col = "black", lwd = 2)
lines(data$Fiorina, type = "l", col = "dimgray", lwd = 2)
lines(data$Huckabee, type = "l", col = "darkslateblue", lwd = 2)
lines(data$Paul, type = "l", col = "indianred3", lwd = 2)
lines(data$Kasich, type = "l", col = "mediumpurple", lwd = 2)
lines(data$Christie, type = "l", col = "purple", lwd = 2)
lines(data$Santorum, type = "l", col = "saddlebrown", lwd = 2)
lines(data$Jindal, type = "l", col = "powderblue", lwd = 2)
lines(data$Graham, type = "l", col = "rosybrown", lwd = 2)

