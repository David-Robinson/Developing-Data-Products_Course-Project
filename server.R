## server.R

library(shiny)

data(mtcars)
hi_corr_fit <- lm(mpg ~ wt + cyl, mtcars)

predicted_MPG <- function(num_cyl, veh_wt)
predict(hi_corr_fit, data.frame(cyl=num_cyl, wt=veh_wt))

shinyServer(function(input, output) {
      output$prediction <- renderText({round(predicted_MPG(input$num_cyl, input$veh_wt),2)})
      }
)
                 
