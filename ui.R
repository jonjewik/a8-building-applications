library("shiny")

shinyUI(
  fluidPage(
    titlePanel(title = h2("Box Plot of Iris Data", align = 'center')),
    sidebarLayout(
      sidebarPanel(
        
        #Selects column to view
        selectInput("var",
               "What Iris Dataset?",
               choices = c("Sepal.length" = 1,
                           "Sepal.Width" = 2,
                           "Petal.length" = 3,
                           "Petal.Width" = 4),
               selected = 1),
        br(),
        
        #Selects color to view plot in
        radioButtons("color",
                     "What Color?",
                     choices = c("dodgerblue3",
                                 "firebrick1",
                                 "gold",
                                 "darkgreen"),
                     selected = "dodgerblue3")
      ),
      
      #Main Panel that makes plot
      mainPanel(
        plotOutput("boxplot")
      )
    )
  )
)