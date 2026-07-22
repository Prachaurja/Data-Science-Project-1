library(shiny)

ui <- fluidPage(
  numericInput("user_number", "Insert a number:", value=0),
  actionButton("manual_insert", "Insert number"),
  actionButton("random_insert", "Insert a random number"),
  verbatimTextOutput("number_list")
)

server <- function(input, output, session) {
  numbers <- reactiveVal(c())
  
  observeEvent(input$manual_insert, {
    new.number <- input$user_number
    numbers(c(numbers(), new.number))
  })
  
  observeEvent(input$random_insert, {
    new.number <- rnorm(1)
    numbers(c(numbers(), new.number))
  })
  
  output$number_list <- renderPrint({
    numbers()
  })
}

shinyApp(ui, server)



