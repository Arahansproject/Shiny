library(shiny)
library(shinydashboard)
library(shinyjs)

library(shiny)

ui <- fluidPage(
  actionButton("chk",
               label = h3("선택"),
               value = TRUE
  ),
  hr(),
  fluidRow()
)

server <- function(input, output, session) {
  output$value <- renderText({input$chk})
}

shinyApp(ui, server)
