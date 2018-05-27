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
    menuItem("R - Estrutura de Dados", icon = icon("database"),
             menuSubItem("R - Vetores"    , tabName = "vectors"   , icon = icon("code") ),
             menuSubItem("R - Matrizes"   , tabName = "matrix"    , icon = icon("th")   ),
             menuSubItem("R - Arrays"     , tabName = "array"     , icon = icon("code") ),
             menuSubItem("R - Fatores"    , tabName = "fatores"   , icon = icon("code") ),
             menuSubItem("R - Dataframes" , tabName = "dataframe" , icon = icon("code") ),
             menuSubItem("R - Listas"     , tabName = "listas"    , icon = icon("code") ),
             menuSubItem("R - Subsets"    , tabName = "subsets"   , icon = icon("code") ),
             menuSubItem("R - DPLYR"      , tabName = "DPLYR"     , icon = icon("plus") )
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
    menuItem("Exercicios", icon = icon("question"), 
             menuSubItem("Variáveis"                  , tabName = "exe-var"        , icon = icon("chevron-right")),
             menuSubItem("Bolsa de Valores"           , tabName = "exe-vet"        , icon = icon("chevron-right")),
             menuSubItem("Elementos - Tipos de Dados" , tabName = "exe-elem_dados" , icon = icon("chevron-right")),
             menuSubItem("Tabela CARS"                , tabName = "exe-cars"       , icon = icon("chevron-right")),
             menuSubItem("BR Flights"                 , tabName = "exe-brflights"  , icon = icon("chevron-right")),
             menuSubItem("Consumo de Energia"         , tabName = "exe-consumo"    , icon = icon("chevron-right"))
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
            includeMarkdown("markdown/001_basicos.Rmd")
            ),
    
    # TAB CONTENT - R - Vetores
    tabItem(tabName = "vectors",
            includeMarkdown("markdown/002_vetores.Rmd")
            ),
    
    # TAB CONTENT - R - Matrizes
    tabItem(tabName = "matrix",
            includeMarkdown("markdown/003_matrizes.Rmd")
            ),
    
    # TAB CONTENT - R - Arrays
    tabItem(tabName = "array",
            includeMarkdown("markdown/004_array.Rmd")
            ),
    
    # TAB CONTENT - R - Fatores
    tabItem(tabName = "fatores",
            includeMarkdown("markdown/005_fatores.Rmd")
            ),
    
    # TAB CONTENT - R - Dataframes
    tabItem(tabName = "dataframe",
            includeMarkdown("markdown/006_dataframe.Rmd")
            ),
    
    # TAB CONTENT - R - Listas
    tabItem(tabName = "listas",
            includeMarkdown("markdown/007_listas.Rmd")
            ),
    
    # TAB CONTENT - R - Subsets
    tabItem(tabName = "subsets",
            includeMarkdown("markdown/000.Rmd")
            ),
    
    # TAB CONTENT - R - Lubridate
    tabItem(tabName = "lubridate",
            includeMarkdown("markdown/000.Rmd")
            ),
    
    # TAB CONTENT - R - Simulation
    tabItem(tabName = "simulation",
            includeMarkdown("markdown/000.Rmd")
            ),
    
    # TAB CONTENT - R - Download
    tabItem(tabName = "download",
            includeMarkdown("markdown/000.Rmd")
            ),
    
    # TAB CONTENT - R - DPLYR
    tabItem(tabName = "DPLYR",
            includeMarkdown("markdown/000.Rmd")
            ),
    
    # TAB CONTENT - R - Plots
    tabItem(tabName = "plots",
            includeMarkdown("markdown/000.Rmd")
            ),
    
    # TAB CONTENT - R - KMeans
    tabItem(tabName = "kmeans",
            includeMarkdown("markdown/000.Rmd")
            ),
    
    # TAB CONTENT - R - Mapas de Calor
    tabItem(tabName = "heatmap",
            includeMarkdown("markdown/000.Rmd")
            ),
    
    # TAB CONTENT - R - Dendrogramas
    tabItem(tabName = "dendrogramas",
            includeMarkdown("markdown/000.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Variáveis
    tabItem(tabName = "exe-var",
            includeMarkdown("markdown/exe_001.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Bolsa de Valores
    tabItem(tabName = "exe-vet",
            includeMarkdown("markdown/exe_002.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Elementos - Tipos de Dados
    tabItem(tabName = "exe-elem_dados",
            includeMarkdown("markdown/exe_003.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Tabela CARS
    tabItem(tabName = "exe-cars",
            includeMarkdown("markdown/000.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - BR Flights
    tabItem(tabName = "exe-brflights",
            includeMarkdown("markdown/000.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Consumo de Energia
    tabItem(tabName = "exe-consumo",
            includeMarkdown("markdown/000.Rmd")
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