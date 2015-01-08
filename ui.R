library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("My Shiny App"),
  
  # Sidebar with a slider input 
  sidebarLayout(
    sidebarPanel(h3("Installation"),
                 p("Shiny is available on CRAN, so you can install it in the usual way from your R console:"),
                 code('install.packages("shiny")'),
                 br(),
                 br(),
                 br(),              
                 img(src="bigorb.png",height=50,width=50),
                 "Shiny is a product of", 
                   span("Rstudio", style="color:blue"),
                 selectInput("var", 
                             label = "Choose a variable to display",
                             choices = c("Percent White", "Percent Black",
                                         "Percent Hispanic", "Percent Asian"),
                             selected = "Percent White"),
                 
                 sliderInput("range", 
                             label = "Range of interest:",
                             min = 0, max = 100, value = c(0, 100))
    
                 
                ),
    
    # Show a plot of the generated distribution
    mainPanel(h2("Intoducing Shiny"),
              p("Shiny is a new package from RStudio that makes it",
                em("incredibly easy"),
                "to build interactive web application with R."),
              br(),
              p("For an introdution and live examples, visit then", 
                a("Shiny homepage.", 
                   href="http://www.google.com", target="_blank")),
              h3("Features"),
              p("* Build useful webpages"),
              p("* Shiny application",
                strong("spreadsheets")),
  
             plotOutput("map") )
  )

))