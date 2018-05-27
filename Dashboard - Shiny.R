## Dashboard - Shiny.R ##
library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(title = "Portfolio Pessoal - R"),
  dashboardSidebar(sidebarMenu(
    menuItem("O Aluno"               , tabName = "sobremim"     , icon = icon("user")      ),
    menuItem("R - Códigos Básicos"   , tabName = "basic"        , icon = icon("terminal")  ),
    menuItem("R - Download"          , tabName = "download"     , icon = icon("download")  ),
    menuItem("R - Lubridate"         , tabName = "lubridate"    , icon = icon("calendar")  ),
    menuItem("R - Estrutura de Dados", icon = icon("database")   ,
             menuSubItem("R - Vetores"  , tabName = "vectors" , icon = icon("code") ),
             menuSubItem("R - Matrizes" , tabName = "matrix"  , icon = icon("th")   ),
             menuSubItem("R - Subsets"  , tabName = "subsets" , icon = icon("code") ),
             menuSubItem("R - DPLYR"    , tabName = "DPLYR"   , icon = icon("plus") )
             ),
    menuItem("R - Gráficos", icon = icon("signal"),
             menuSubItem("R - Plots"             , tabName = "plots"        , icon = icon("signal")    ),
             menuSubItem("R - Mapas de Calor"    , tabName = "heatmap"      , icon = icon("delicious") ),
             menuSubItem("R - Dendrogramas"      , tabName = "dendrogramas" , icon = icon("map")       )
             ),
    menuItem("R - Simulações", icon = icon("code"),
             menuSubItem("R - Simulation"        , tabName = "simulation"   , icon = icon("code")      ),
             menuSubItem("R - KMeans"            , tabName = "kmeans"       , icon = icon("signal")    )
             ),
    menuItem("Exercicios"                                    , icon = icon("question")   , 
             menuSubItem("Tabela CARS"        , tabName = "exe-cars"      , icon = icon("chevron-right")),
             menuSubItem("BR Flights"         , tabName = "exe-brflights" , icon = icon("chevron-right")),
             menuSubItem("Consumo de Energia" , tabName = "exe-consumo"   , icon = icon("chevron-right"))
    )
  )),
  ## Body content
  dashboardBody(tabItems(
    # TAB CONTENT - Sobre O Aluno
    tabItem(tabName = "sobremim",
            includeMarkdown("markdown/sobremim.Rmd")
            ),
    
    # TAB CONTENT - R - Basic Codes
    tabItem(tabName = "basic",
            includeMarkdown("markdown/001.Rmd")
            ),
    
    # TAB CONTENT - R - Vetores
    tabItem(tabName = "vectors",
            includeMarkdown("markdown/002.Rmd")
            ),
    
    # TAB CONTENT - R - Matrizes
    tabItem(tabName = "matrix",
            includeMarkdown("markdown/003.Rmd")
            ),
    
    # TAB CONTENT - R - Subsets
    tabItem(tabName = "subsets",
            includeMarkdown("markdown/004.Rmd")
            ),
    
    # TAB CONTENT - R - Lubridate
    tabItem(tabName = "lubridate",
            includeMarkdown("markdown/005.Rmd")
            ),
    
    # TAB CONTENT - R - Simulation
    tabItem(tabName = "simulation",
            includeMarkdown("markdown/006.Rmd")
            ),
    
    # TAB CONTENT - R - Download
    tabItem(tabName = "download",
            includeMarkdown("markdown/007.Rmd")
            ),
    
    # TAB CONTENT - R - DPLYR
    tabItem(tabName = "DPLYR",
            includeMarkdown("markdown/008.Rmd")
            ),
    
    # TAB CONTENT - R - Plots
    tabItem(tabName = "plots",
            includeMarkdown("markdown/009.Rmd")
            ),
    
    # TAB CONTENT - R - KMeans
    tabItem(tabName = "kmeans",
            includeMarkdown("markdown/010.Rmd")
            ),
    
    # TAB CONTENT - R - Mapas de Calor
    tabItem(tabName = "heatmap",
            includeMarkdown("markdown/011.Rmd")
            ),
    
    # TAB CONTENT - R - Dendrogramas
    tabItem(tabName = "dendrogramas",
            includeMarkdown("markdown/012.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Tabela CARS
    tabItem(tabName = "exe-cars",
            includeMarkdown("markdown/013a.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - BR Flights
    tabItem(tabName = "exe-brflights",
            includeMarkdown("markdown/013b.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Consumo de Energia
    tabItem(tabName = "exe-consumo",
            includeMarkdown("markdown/013c.Rmd")
            )
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