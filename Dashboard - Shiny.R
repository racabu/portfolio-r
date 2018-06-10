## Dashboard - Shiny.R ##
library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(title = "Portfolio Pessoal - R"),
  dashboardSidebar(sidebarMenu(
    menuItem("O Aluno"               , tabName = "sobremim"     , icon = icon("user")      ),
    menuItem("R - Códigos Básicos"   , tabName = "basic"        , icon = icon("terminal")  ),
    menuItem("R - Valores Especiais" , tabName = "specialval"   , icon = icon("terminal")  ),
    menuItem("R - Data e Hora"       , tabName = "datahora"     , icon = icon("calendar")  ),
    menuItem("R - Environment"       , tabName = "environment"  , icon = icon("code")      ),
    menuItem("R - Estrutura de Dados", icon = icon("database"),
             menuSubItem("R - Vetores"    , tabName = "vectors"    , icon = icon("chevron-right") ),
             menuSubItem("R - Matrizes"   , tabName = "matrix"     , icon = icon("chevron-right") ),
             menuSubItem("R - Arrays"     , tabName = "array"      , icon = icon("chevron-right") ),
             menuSubItem("R - Fatores"    , tabName = "fatores"    , icon = icon("chevron-right") ),
             menuSubItem("R - Dataframes" , tabName = "dataframe"  , icon = icon("chevron-right") ),
             menuSubItem("R - Listas"     , tabName = "listas"     , icon = icon("chevron-right") ),
             menuSubItem("R - Subsets"    , tabName = "subsets"    , icon = icon("chevron-right") ),
             menuSubItem("R - Sequências" , tabName = "sequencias" , icon = icon("chevron-right") ),
             menuSubItem("R - DPLYR"      , tabName = "DPLYR"      , icon = icon("chevron-right") )
             ),
    menuItem("R - Gráficos", icon = icon("signal"),
             menuSubItem("R - Plots"             , tabName = "plots"        , icon = icon("chevron-right")  ),
             menuSubItem("R - Mapas de Calor"    , tabName = "heatmap"      , icon = icon("chevron-right")  ),
             menuSubItem("R - Dendrogramas"      , tabName = "dendrogramas" , icon = icon("chevron-right")  )
             ),
    menuItem("R - Simulações", icon = icon("code"),
             menuSubItem("R - Simulation"            , tabName = "simulation"   , icon = icon("chevron-right") ),
             menuSubItem("R - Loop"                  , tabName = "loop"         , icon = icon("chevron-right") ),
             menuSubItem("R - Funções e sub-Rotinas" , tabName = "funcoes"      , icon = icon("chevron-right") ),
             menuSubItem("R - Condicionais"          , tabName = "condicionais" , icon = icon("chevron-right") ),
             menuSubItem("R - Download"              , tabName = "download"     , icon = icon("chevron-right") ),
             menuSubItem("R - KMeans"                , tabName = "kmeans"       , icon = icon("chevron-right") )
             ),
    menuItem("Exercicios", icon = icon("question"), 
             menuSubItem("Variáveis"                  , tabName = "exe-var"        , icon = icon("chevron-right")),
             menuSubItem("Bolsa de Valores"           , tabName = "exe-vet"        , icon = icon("chevron-right")),
             menuSubItem("Elementos - Tipos de Dados" , tabName = "exe-elem_dados" , icon = icon("chevron-right")),
             menuSubItem("Revisão Aula 1 - A"         , tabName = "exe-rev_a1a"    , icon = icon("chevron-right")),
             menuSubItem("Revisão Aula 1 - B"         , tabName = "exe-rev_a1b"    , icon = icon("chevron-right")),
             menuSubItem("Matrizes - Operações"       , tabName = "exe-matsom"     , icon = icon("chevron-right")),
             menuSubItem("Matrizes - Multiplicação"   , tabName = "exe-matmult"    , icon = icon("chevron-right")),
             menuSubItem("Matrizes - Tranposição"     , tabName = "exe-mattransp"  , icon = icon("chevron-right")),
             menuSubItem("Matrizes - Malvadão"        , tabName = "exe-malvadao"   , icon = icon("chevron-right")),
             menuSubItem("Tabela CARS"                , tabName = "exe-cars"       , icon = icon("chevron-right")),
             menuSubItem("Lubridate"                  , tabName = "exe-lubridate"  , icon = icon("chevron-right")),
             menuSubItem("BR Flights"                 , tabName = "exe-brflights"  , icon = icon("chevron-right")),
             menuSubItem("Sequências"                 , tabName = "exe-sequencias" , icon = icon("chevron-right")),
             menuSubItem("Loop - Airpassengers"       , tabName = "exe-loop"       , icon = icon("chevron-right"))
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
    
    # TAB CONTENT - R - Valores Especiais
    tabItem(tabName = "specialval",
            includeMarkdown("markdown/001_valores_esp.Rmd")
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
            includeMarkdown("markdown/008_subsets.Rmd")
            ),
    
    # TAB CONTENT - R - Data e Hota
    tabItem(tabName = "datahora",
            includeMarkdown("markdown/010_datahora.Rmd")
            ),
    
    # TAB CONTENT - R - Sequencias
    tabItem(tabName = "sequencias",
            includeMarkdown("markdown/011_sequencias.Rmd")
            ),
    
    # TAB CONTENT - R - Simulation
    tabItem(tabName = "simulation",
            includeMarkdown("markdown/012_simulation.Rmd")
            ),
    
    # TAB CONTENT - R - Loop
    tabItem(tabName = "loop",
            includeMarkdown("markdown/013_loop.Rmd")
            ),
    
    # TAB CONTENT - R - Funções e sub-Rotinas
    tabItem(tabName = "funcoes",
            includeMarkdown("markdown/014_funcoes.Rmd")
            ),
    
    # TAB CONTENT - R - Condicionais
    tabItem(tabName = "condicionais",
            includeMarkdown("markdown/015_condicionais.Rmd")
            ),
    
    # TAB CONTENT - R - Environment
    tabItem(tabName = "environment",
            includeMarkdown("markdown/016_environment.Rmd")
            ),
    
    # TAB CONTENT - R - Download
    tabItem(tabName = "download",
            includeMarkdown("markdown/017_download.Rmd")
            ),
    
    # TAB CONTENT - R - DPLYR
    tabItem(tabName = "DPLYR",
            includeMarkdown("markdown/018_DPLYR.Rmd")
            ),
    
    # TAB CONTENT - R - Plots
    tabItem(tabName = "plots",
            includeMarkdown("markdown/019_plots.Rmd")
            ),
    
    # TAB CONTENT - R - KMeans
    tabItem(tabName = "kmeans",
            includeMarkdown("markdown/020_kmeans.Rmd")
            ),
    
    # TAB CONTENT - R - Mapas de Calor
    tabItem(tabName = "heatmap",
            includeMarkdown("markdown/021_mapacalor.Rmd")
            ),
    
    # TAB CONTENT - R - Dendrogramas
    tabItem(tabName = "dendrogramas",
            includeMarkdown("markdown/022_dendrograma.Rmd")
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
    
    # TAB CONTENT - Exercicios - Revisão Aula 1 - A
    tabItem(tabName = "exe-rev_a1a",
            includeMarkdown("markdown/exe_004.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Revisão Aula 1 - B
    tabItem(tabName = "exe-rev_a1b",
            includeMarkdown("markdown/exe_005.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Matrizes - Operações
    tabItem(tabName = "exe-matsom",
            includeMarkdown("markdown/exe_006.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Matrizes - Multiplicação
    tabItem(tabName = "exe-matmult",
            includeMarkdown("markdown/exe_007.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Matrizes - Tranposição
    tabItem(tabName = "exe-mattransp",
            includeMarkdown("markdown/exe_008.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Matrizes - Malvadão
    tabItem(tabName = "exe-malvadao",
            includeMarkdown("markdown/exe_009.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Tabela CARS
    tabItem(tabName = "exe-cars",
            includeMarkdown("markdown/exe_010.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Lubridate
    tabItem(tabName = "exe-lubridate",
            includeMarkdown("markdown/exe_011.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - BR Flights
    tabItem(tabName = "exe-brflights",
            includeMarkdown("markdown/exe_012.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Sequências
    tabItem(tabName = "exe-sequencias",
            includeMarkdown("markdown/exe_013.Rmd")
            ),
    
    # TAB CONTENT - Exercicios - Loop - Airpassengers
    tabItem(tabName = "exe-sequencias",
            includeMarkdown("markdown/exe_014.Rmd")
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