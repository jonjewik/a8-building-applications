library(shiny)

shinyServer(
  function(input, output){
    output$boxplot <- renderPlot({
      columnz <- as.numeric(input$var)
      
      boxplot(iris[,columnz],
           breaks = seq(0, max(iris[,columnz])),
           col=input$color, main = "Box Plot of Iris Dataset",
           xlab = names(iris[columnz]))
    })
  }
)