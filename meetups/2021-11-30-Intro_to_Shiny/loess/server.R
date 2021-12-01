library(shiny)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$loessPlot <- renderPlot({
        
        loess.out <- loess(y ~ x, data = df, degree = 1, span = input$span)
        df <- df %>% mutate(fitted = fitted(loess.out))
        
        df.points <- df %>%
            mutate(dist = abs(x - input$center)) %>%
            filter(rank(dist) / n() <= input$span) %>%
            mutate(weight = (1 - (dist / max(dist)) ^ 3) ^ 3)
        
        ggplot(df.points, aes(x = x, y = y)) +
            geom_vline(xintercept = input$center, linetype = 2) +
            geom_point(data = df, alpha = 0.5, shape = 1) +
            geom_point(aes( color = weight)) +
            geom_smooth(method = 'lm', formula = y ~ x, aes(weight = weight),
                        se = FALSE, color = 'blue', size = 0.5) +
            scale_color_gradient2(low = '#ece7f2', high = '#2b8cbe') +
            geom_line(data = df, aes(y = fitted), color = 'black', size = 0.5)
    })

})
