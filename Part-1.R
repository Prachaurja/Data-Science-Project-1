library(shiny)

ui <- fluidPage(
  textInput("name", "What's your name?"),
  textOutput("greeting")
)

server <- function(input, output) {
  output$greeting <- renderText({
    paste("Hello,", input$name, "!")
  })
}

shinyApp(ui, server)