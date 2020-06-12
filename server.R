library(shiny)
library(readr)
library(dplyr)
library(ggplot2)
library(lubridate)
options(shiny.reactlog=TRUE)

shinyServer(function(input, output) {
    
    output$mpgPlot <- renderPlot({
        carPrice <- read.csv("carprice.csv")
        
        ggplot(data = carPrice, 
               mapping = aes(x = Price, y = MPG.city)) + 
            geom_count(aes(color = Type)) +     
            xlim(input$range[1], input$range[2])
    })
})