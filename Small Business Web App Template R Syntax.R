#BPS Beta App#



############Clear Working Environment and load packages#
rm(list = ls(all.names = TRUE))
require("shiny")
require("shinythemes")
library("shiny")
library("shinythemes")
##Get and set your working directory##
getwd()
setwd("C:/#####/###/##/BPS Beta Application")
bizprim <- read.csv("fakebizpriminfo.csv", stringsAsFactors = FALSE)
biz2ndinfo <- read.csv("Biz2ndinfo.csv", stringsAsFactors = FALSE)
bizpartinfo <- read.csv("fakebizpartinfo.csv", stringsAsFactors = FALSE)
bizdate <- read.csv("Bizdate.csv",stringsAsFactors = FALSE)
###I split these into different csv's so it is easy to understand and follow
### it would be more efficent to actually use one file and draw from that#
### but for the purposes of sharing I felt this is easier to follow the logic#


ui <- fluidPage(
  theme = shinytheme("darkly"),
  titlePanel("Business Name"),
  sidebarLayout(
    sidebarPanel(selectizeInput("bnsearchinput", "Business Name", selected = NULL, choices = bizprim$Business, multiple = FALSE)),
    
    
    
    mainPanel(
      h2("Primary Information"),
     tableOutput("Primary_Information"),
     h4("Date of Last Test"),
     tableOutput("LastTest"),
     br(),
     br(),
     h4("Account Information"),
      tableOutput("MA"),
     br(),
     h4("Backflow Unit Information"),
      tableOutput("UI")
      
      
      )
    )
)


server <- function(input,output) {
  output$Primary_Information <- renderTable({
   subset(bizprim, bizprim$Business == input$bnsearchinput)
    
  })
  
  output$LastTest <- renderTable({
    subset(bizdate, bizdate$Business == input$bnsearchinput)
  })
  output$MA <- renderTable({
    subset(biz2ndinfo, biz2ndinfo$Business == input$bnsearchinput)
  }) 
  
  
  output$UI <- renderTable({
    subset(bizpartinfo, bizpartinfo$Business == input$bnsearchinput)
  })
  
}


shinyApp(ui, server)
