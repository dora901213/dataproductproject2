#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
library(datasets)

# Define a server for the Shiny app
function(input, output) {
  
  # Fill in the spot we created for a plot
  output$USexpPlot <- renderPlot({
    
    # Render a barplot
    barplot(USPersonalExpenditure[,input$category], 
            main=input$category,
            ylab="United States personal expenditures (in billions of dollars) ",
            xlab="Category")
  })
}