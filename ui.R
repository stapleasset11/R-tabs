library(shiny)
shinyUI(fluidPage(
  headerPanel(title = "Shiny page tab"),
  sidebarLayout(
    sidebarPanel(
      selectInput("ngear","select gear number",c("Cylinder" = "cyl","Transmission" = "am","Gears" = "gear" ))
    ),
    mainPanel(
      tabsetPanel(type = "tab",
                  # tabPanel("Help",tags$video(src="Dune.Prophecy.S01E02.720p.10bit.WEBRip.2CH.x265.HEVC-PSA.mkv",width = "500px",height="auto",type = "video/mp4",controls = 'controls')),
                  tabPanel("Data",tableOutput("mtcars"),downloadButton("downloadData","Download Data")),
                  tabPanel("Summary",verbatimTextOutput("summ")),
                  tabPanel("Plot",plotOutput("plot"),downloadButton("downloadPlot","Download Plot"))
      )
    )
  )
))