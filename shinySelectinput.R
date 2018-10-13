library(shiny)
library(shinydashboard)
library(shinyjs)

library(shiny)

ui <- fluidPage(
  selectInput("select",
            label = h3("셀렉트 박스"),
            choices = list(
              "선택1" = 1,
              "선택2" = 2,
              "선택3" = 3
              ),
            selected = 1,
  hr(),
  fluidRow(column(3, verbatimTextOutput("value")))
)

server <- function(input, output, session) {
  output$value <- renderPrint({input$date})
}

shinyApp(ui, server)

