## Dashboard - Shiny.R ##
library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(title = "Portfolio Pessoal - R"),
  dashboardSidebar(sidebarMenu(
    menuItem("O Aluno"            , tabName = "sobremim"     , icon = icon("user")      ),
    menuItem("R - Codigos Basicos", tabName = "basic"        , icon = icon("terminal")  ),
    menuItem("R - Vetores"        , tabName = "vectors"      , icon = icon("code")      ),
    menuItem("R - Matrizes"       , tabName = "matrix"       , icon = icon("th")        ),
    menuItem("R - Subsets"        , tabName = "subsets"      , icon = icon("code")      ),
    menuItem("R - Lubridate"      , tabName = "lubridate"    , icon = icon("calendar")  ),
    menuItem("R - Simulation"     , tabName = "simulation"   , icon = icon("code")      ),
    menuItem("R - Download"       , tabName = "download"     , icon = icon("download")  ),
    menuItem("R - DPLYR"          , tabName = "DPLYR"        , icon = icon("plus")      ),
    menuItem("R - Plots"          , tabName = "plots"        , icon = icon("signal")    ),
    menuItem("R - KMeans"         , tabName = "kmeans"       , icon = icon("signal")    ),
    menuItem("R - Mapas de Calor" , tabName = "heatmap"      , icon = icon("delicious") ),
    menuItem("R - Dendrogramas"   , tabName = "dendrogramas" , icon = icon("map")       ),
    menuItem("Exercicios"                                    , icon = icon("question")   , 
      menuSubItem("BR Flights"         , tabName = "exe-brflights" , icon = icon("chevron-right")),
      menuSubItem("Consumo de Energia" , tabName = "exe-consumo"   , icon = icon("chevron-right"))
    )
  )),
  ## Body content
  dashboardBody(tabItems(
    # TAB CONTENT - Sobre O Aluno
    tabItem(tabName = "sobremim",
            h2("Sobre O Aluno")),
    
    # TAB CONTENT - R - Basic Codes
    tabItem(tabName = "basic",
            h2("Codigos Basicos"))
  ))
)




server <- function(input, output) {
  set.seed(122)
  histdata <- rnorm(500)
  
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    hist(data)
  })
}

shinyApp(ui, server)