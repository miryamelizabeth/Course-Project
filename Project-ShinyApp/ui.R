#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  navbarPage("Spotify Music:",
             
             
             tabPanel("Home",
                      sidebarPanel(
                        
                        HTML("<h3>Input parameters</h3>"),
                        
                        helpText("Acousticness: A confidence measure from 0.0 to 1.0 of whether the track is acoustic. 1.0 represents high confidence the track is acoustic."),
                        sliderInput("acousticness",
                                    "Acousticness:",
                                    min = 0,
                                    max = 1,
                                    value = 0.9,
                                    step = 0.1),
                        
                        helpText("Danceability: Describes how suitable a track is for dancing based on a combination of musical elements. A value of 0.0 is least danceable and 1.0 is most danceable."),
                        sliderInput("danceability",
                                    "Danceability:",
                                    min = 0,
                                    max = 1,
                                    value = 0.6,
                                    step = 0.1),
                        
                        helpText("Energy: Represents a perceptual measure of intensity and activity. For example, death metal has high energy, while a Bach prelude scores low on the scale."),
                        sliderInput("energy",
                                    "Energy:",
                                    min = 0,
                                    max = 1,
                                    value = 0.5,
                                    step = 0.1),
                        
                        helpText("Instrumentalness: The closer the instrumentalness value is to 1.0"),
                        sliderInput("instrumentalness",
                                    "Instrumentalness:",
                                    min = 0,
                                    max = 1,
                                    value = 0.3,
                                    step = 0.1),
                        
                        helpText("Speechiness: Values above 0.66 describe tracks that are probably made entirely of spoken words. Values between 0.33 and 0.66 describe tracks that may contain both music and speech."),
                        sliderInput("speechiness",
                                    "Speechiness:",
                                    min = 0,
                                    max = 1,
                                    value = 0.3,
                                    step = 0.1),
                        
                        helpText("Valence: Tracks with high valence sound more positive (e.g. happy, cheerful, euphoric), while tracks with low valence sound more negative (e.g. sad, depressed, angry)."),
                        sliderInput("valence",
                                    "Valence: ",
                                    min = 0,
                                    max = 1,
                                    value = 0.5,
                                    step = 0.1),
                        
                        actionButton("submitbutton", "Submit")
                      ), # sidebarPanel
                      
                      
                      # Show a plot of the generated distribution
                      mainPanel(
                        tags$label(h3('Status/Output')), # Status/Output Text Box
                        verbatimTextOutput('contents'),
                        tableOutput('tabledata') # Prediction results table
                      )
             ), # tabPanel
             
             
             tabPanel("About", 
                      titlePanel("About"), 
                      div(includeMarkdown("about.md"), 
                          align="justify")
             ) #tabPanel - About
             
             
  ) # navbarPage
))
