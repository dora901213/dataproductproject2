#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

library(datasets)

# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("United States personal expenditures by year (1940-1960)"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("category", "Category:", 
                  choices=colnames(USPersonalExpenditure)),
      hr(),
      helpText("Data from The World Almanac and Book of Facts, 1962, page 756.")
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("USexpPlot")  
    )
    
  )
)