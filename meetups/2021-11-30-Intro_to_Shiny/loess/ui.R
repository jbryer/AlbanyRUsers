library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Loess Shiny App"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("center",
                        "Center:",
                        min = min(df$x),
                        max = max(df$x),
                        value = min(df$x),
                        step = .1),
            numericInput('span',
                         'Span:',
                         min = .1,
                         max = 30,
                         step = .1,
                         value = .3)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("loessPlot")
        )
    )
))
