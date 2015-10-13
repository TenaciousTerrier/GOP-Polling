#setwd("C:/Users/thep3/Desktop/Coursera/Developing Data Products/GOP Polling")

library(shiny)

shinyUI(fluidPage(
  
  uiOutput(outputId = "numSelector")
  
  , titlePanel("2016 Republican Presidential Nomination"

  )
  
  , mainPanel(
    plotOutput("plot")
    , strong("Data and inspiration for project are from:")
    , a("http://www.realclearpolitics.com/")
  ) 
  
  , sidebarPanel(
    position = "bottom"
    , strong("Project By: TenaciousTerrier")
    , img(src="TenaciousTerrier.png", height = 100, width = 100)
  )



  , fluidRow(
    

    
    column(3, 
           checkboxGroupInput(inputId = "checkGroup", 
                              label = h3("Candidates"), 
                              choices = list("Trump" = 1, "Carson" = 2, "Rubio" = 3, "Fiorina" = 4, "Bush" = 5, "Cruz" = 6
                                             , "Kasich" = 7, "Paul" = 8, "Christie" = 9, "Huckabee" = 10, "Santorum" = 11
                                             , "Jindal" = 12, "Graham" = 13)
                              , selected = c(3)
                              # , inline = TRUE
                              # , col = c("blue", "red")
                              #, position = "right"
           )
  )
  
  )
))