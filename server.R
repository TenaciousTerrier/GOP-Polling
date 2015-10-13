#setwd("C:/Users/thep3/Desktop/Coursera/Developing Data Products/GOP Polling")

library(shiny)

#library(UsingR)
data = read.csv("GOP Nomination Data.csv")  
data = data[sort(data$Index, decreasing = TRUE),] 

shinyServer(

function(input, output) {
  
#  output$numSelector = renderUI({
#    out = checkboxGroupInput(
#      inputId = "numSelector",
#      label   = "Select the numbers",
#      choices = selectRange(input$checkGroup),
#      inline = TRUE
#    )
#    return(out)
#  })
  
    output$plot = renderPlot({
      plot(data$Trump, type = "l", ylab = "", xlab = "", xaxt = "n", col = "white", lwd = 2, main = "Polling Data")
      axis(1, at = 1:length(data$Index), labels = data$Date)
      
       if(1 %in% input$checkGroup) {
          lines(data$Trump, type = "l", col = "blue", lwd = 2)
       } 
      if(2 %in% input$checkGroup) {
        lines(data$Carson, type = "l", col = "red", lwd = 2)
      } 
      if(3 %in% input$checkGroup) {
        lines(data$Bush, type = "l", col = "darkolivegreen", lwd = 2)
      } 
      if(4 %in% input$checkGroup) {
        lines(data$Rubio, type = "l", col = "deepskyblue1", lwd = 2)
      } 
      if(5 %in% input$checkGroup) {
        lines(data$Cruz, type = "l", col = "black", lwd = 2)
      } 
      if(6 %in% input$checkGroup) {
        lines(data$Fiorina, type = "l", col = "dimgray", lwd = 2)
      } 
      if(7 %in% input$checkGroup) {
        lines(data$Huckabee, type = "l", col = "darkslateblue", lwd = 2)
      } 
      if(8 %in% input$checkGroup) {
        lines(data$Paul, type = "l", col = "indianred3", lwd = 2)
      } 
      if(9 %in% input$checkGroup) {
        lines(data$Kasich, type = "l", col = "mediumpurple", lwd = 2)
      } 
      if(10 %in% input$checkGroup) {
        lines(data$Christie, type = "l", col = "purple", lwd = 2)
      } 
      if(11 %in% input$checkGroup) {
        lines(data$Santorum, type = "l", col = "saddlebrown", lwd = 2)
      } 
      if(12 %in% input$checkGroup) {
        lines(data$Jindal, type = "l", col = "powderblue", lwd = 2)
      } 
      if(13 %in% input$checkGroup) {
        lines(data$Graham, type = "l", col = "rosybrown", lwd = 2)
      } 
    })



    
    
  }
)

















# output$plot1 = renderPlot(Trump)