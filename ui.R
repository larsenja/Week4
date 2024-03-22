# Week 4 assignment
# 21-03-2024
# Jakob Larsen
# UI part of the application
# #


# Load necessary libraries

library(shiny)

library(ggplot2)

library(dplyr)



# Load the diamonds dataset

data("diamonds")



# Define UI for application

ui <- fluidPage(
  
  titlePanel("Diamond Price Prediction"),
  
  sidebarLayout(
    
    sidebarPanel(
      
      h4("Enter carat, hit Predict, prediced price appears below chart"),
      
      numericInput("carat", "Carat", value = 0, min = 0, step = 0.1),
      
      
      
      actionButton("predictBtn", "Predict")
      
    ),
    
    mainPanel(
      
      plotOutput("pricePlot"),
      
      textOutput("predictedPrice")
      
    )
    
  )
  
)
