#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(data.table)
library(rpart)
library(rmarkdown)


# Read data
dataset <- read.csv(file="https://raw.githubusercontent.com/miryamelizabeth/datasets/main/spotify_dataset.csv", sep=',')
dataset <- dataset[, c('artist', 'danceability', 'energy', 'key', 'loudness', 'mode', 'speechiness', 'acousticness', 'instrumentalness', 'liveness', 'valence', 'tempo', 'duration_min', 'class')]

data <- dataset[, c('acousticness', 'danceability', 'energy', 'instrumentalness', 'speechiness', 'valence', 'class')] #'loudness', 'mode',  'liveness', 'tempo', 'key',


# Save model to RDS file
model <- rpart(class ~., data = data)
#saveRDS(model, "model.rds")

# Read in the RF model
#model <- readRDS("model.rds")




# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Input Data
  datasetInput <- reactive({  
    
    # outlook,temperature,humidity,windy,play
    df <- data.frame(
      Name = c("acousticness",
               "danceability",
               "energy",
               "instrumentalness",
               "speechiness",
               "valence"),
      Value = as.character(c(input$acousticness,
                             input$danceability,
                             input$energy,
                             input$instrumentalness,
                             input$speechiness,
                             input$valence)),
      stringsAsFactors = FALSE)
    
    df <- rbind(df, "class")
    input <- transpose(df)
    write.table(input, "input.csv", sep=",", quote = FALSE, row.names = FALSE, col.names = FALSE)
    
    test <- read.csv(paste("input", ".csv", sep=""), header = TRUE)
    
    
    Output <- data.frame(round(predict(model, test, type="prob"), 3))
    print(Output)
    
  })
  
  # Status/Output Text Box
  output$contents <- renderPrint({
    if (input$submitbutton>0) { 
      isolate("Calculation complete.") 
    } else {
      return("Server is ready for calculation.")
    }
  })
  
  # Prediction results table
  output$tabledata <- renderTable({
    if (input$submitbutton>0) { 
      isolate(datasetInput()) 
    } 
  })
})
