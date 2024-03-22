# Week 4 assignment
# 21-03-2024
# Jakob Larsen
# Server part of the application
# 

# Define server logic

server <- function(input, output) {
  
  
  
  # Fit a linear regression model
  
  model <- reactive({
    
    lm(price ~  carat, data = diamonds)
    
  })
  
  
  
  # Function to predict price based on input values
  
  predictPrice <- reactive({
    
    new_data <- data.frame(
      
      carat = input$carat
      
      
      
    )
    
    # Predict using the model
    
    predict(model(), newdata = new_data)[1]
    
  })
  
  
  
  # Render plot
  
  output$pricePlot <- renderPlot({
    
    ggplot(diamonds, aes(x = carat, y = price)) +
      
      geom_point() +
      
      geom_smooth(method = "lm")
    
  })
  
  
  # Render predicted price
  
  output$predictedPrice <- renderText({
    
    if(input$predictBtn > 0) {
      
      paste("Predicted Price: $", round(predictPrice(), 2))
      
    }
    
  })
  
  
}



# Run the application

#shinyApp(ui = ui, server = server)