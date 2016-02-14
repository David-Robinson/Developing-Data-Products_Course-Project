## ui.R

library(shiny)

shinyUI(
      pageWithSidebar(
            # Application title
            headerPanel("Automobile MPG Predictor"),
            
            sidebarPanel(
                  numericInput('num_cyl', "Number of Cylinders", 4, 2, 10, step=2),
                  sliderInput('veh_wt', "Vehicle Weight (lbs/1000)", 0, 10, 2.5, step=0.5),
                  submitButton("Submit")
            ),
            
      mainPanel(
            h3("Predicted MPG"),
            verbatimTextOutput('prediction'),
            
            h4("Supporting Documentation"),
            p("Background:  This application uses statistical inference and regression
            modeling to predict miles per gallon (MPG) for an automobile based on two
            significant design specifications -- number of cylinders and vehicle weight."),
            p("Instructions:  Enter the number of cylinders in the text box on the left
            and then move the slider bar to the approximate vehicle weight (lbs/1000).
            Select the 'Submit' button, and the predicted MPG will appear in the text
            box above.")
            )
      )
)

