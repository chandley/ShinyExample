library(shiny)
ui <- fluidPage(
  sliderInput(inputId = "num",
              label = "Choose a number",
              value = 25, min =1, max = 100),
  plotOutput("hist")
)

server <- function(input, output) {
  
  
  output$hist <- renderPlot({
    x <- rnorm(input$num)
    y <- rnorm(input$num)
    dotchart(x,y)
  })
}

shinyApp(ui = ui, server = server)