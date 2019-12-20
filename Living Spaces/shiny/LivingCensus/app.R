#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(mapview)
library(tidycensus)
library(leaflet)
library(sf)
library(stringr)
library(readr)
options(tigris_use_cache = TRUE)

FemaleNowMarried <- read_delim("db.txt", ";", escape_double = FALSE, 
                                     trim_ws = TRUE)

# Define UI for application that draws a histogram
header <- dashboardHeader(title="Female Married")

sidebar <- dashboardSidebar(
)

body <- dashboardBody(
  # Define UI for application
  fluidPage(
    mainPanel(
      leafletOutput("test")
    )
  )
)

ui <- dashboardPage(header, sidebar, body, skin="black")

# Define server logic required to draw a histogram
server <- function(input, output) {
  output$test <- renderLeaflet({
  
    
    mapview(FemaleNowMarried, zcol = "estimate", legend = TRUE)@map
  })
}

# Run the application 
shinyApp(ui = ui, server = server)

