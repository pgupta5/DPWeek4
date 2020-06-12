library(shiny)

shinyUI(fluidPage(
    titlePanel("Car Price Data"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("range", "Price (thousands):",min = 0, max = 30, value = c(0,30)),textOutput("Select Price Range")
           ),
        mainPanel(
            plotOutput("mpgPlot")
            )
        )
    )
)
