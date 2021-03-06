library(shiny)
library(shinydashboard)
library(shinyjs)

library(shiny)

ui <- fluidPage(
  dateRangeInput("date",
                 label = h3("기간 설정")
                 ),
  hr(),
  fluidRow(column(4, verbatimTextOutput("value")))
)

server <- function(input, output, session) {
  output$value <- renderPrint({input$action})
}

shinyApp(ui, server)


