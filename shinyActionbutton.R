library(shiny)
library(shinydashboard)
library(shinyjs)

library(shiny)

ui <- fluidPage(
  actionButton("action",
               label = "액션버튼"
               ),
  hr(),
  verbatimTextOutput("value")
)

server <- function(input, output, session) {
  onclick("btn",info(date()))
}

shinyApp(ui, server)
