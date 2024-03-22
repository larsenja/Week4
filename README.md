# Week4
Repo for the Week 4 Assignment in the course Developing Data Products

Here you will find the ui.R and server.R files for the assignment.

For some reason I was not able to add documentation to Shiny app it self. So below some documentation.

The application predicts the price of a diamond based on the carat of the diamond. The prediction is made from a linear regression with price as dependent variable and carat is independent variable. The model is estimated on the Diamonds dataset.
You need the following packages: Shiny, ggplot2 and dplyr.
To run the app, do the following. Download the ui.R and the server.R files. Open one of them, at click the Run App button. 
Enter the carat and a hit the Predict button, a prediction of price is shown below the chart.
The chart shows price vs carat and the linear model fit.
