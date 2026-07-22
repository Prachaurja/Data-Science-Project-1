library(shiny)

ui <- fluidPage(
  textInput("text", "Enter some text:"),
  textOutput("count")
)

server <- function(input, output) {
  output$count <- renderText({
    n <- nchar(input$text)
    
    # If the length is exactly 1 for singular, otherwise use plural
    if (n == 1) {
      paste("You have input", n, "character")
    } else {
      paste("You have input", n, "characters")
    }
  })
}

shinyApp(ui = ui, server = server)