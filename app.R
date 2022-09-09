library(shiny)

# Define UI ----
ui <- navbarPage(title = "Golf Fahrtkosten", position = "fixed-bottom",

       tabPanel(title = "About",
           fluidRow(
            column(10,
          h1("General information"),
            p("My Golf 2.0 TDI is free for family use as long as the drivers treat the car in a responsible, sustainable and careful way.
  Thus, drivers pay for primary costs (fuel, self-responsible damage, antifreeze agent, washing, etc.) themselves and contribute to secondary costs (tax, insurance, service, etc.).
  Secondary costs may be contributed by the parents instead of students."),
            br(),
            h1("Calculating km costs"),
            p("Here kilometer costs are calculated according to mean fuel, tax and insurance costs per month. Sources for respective data:"),
            br(),
            p("* fuel consumption per kilometer", a("autokostencheck", href = "https://www.autokostencheck.de/VW/VW-Golf/Golf-VIII/golf-viii-2-0-tdi-cd_47820/verbrauch/")),
            p("* mean tax and insurance:", a("autokostencheck", href = "https://www.autokostencheck.de/VW/VW-Golf/Golf-VIII/golf-viii-2-0-tdi-cd_47820.html")),
            p("* monthly mean diesel price:", a("autokiste", href = "https://www.autokiste.de/content/spritpreise.htm"))
          )
      )
  ),

  tabPanel("Widgets",
 fluidRow(
      column(3,
             h3("Buttons"),
             actionButton("action", "Action"),
             br(),
             br(),
             submitButton("Submit")),

      column(3,
             h3("Single checkbox"),
             checkboxInput("checkbox", "Choice A", value = TRUE)),

      column(3,
             checkboxGroupInput("checkGroup",
                                h3("Checkbox group"),
                                choices = list("Choice 1" = 1,
                                               "Choice 2" = 2,
                                               "Choice 3" = 3),
                                selected = 1)),

      column(3,
             dateInput("date",
                       h3("Date input"),
                       value = "2014-01-01"))
    ),
    fluidRow(
      column(3,
             dateRangeInput("dates", h3("Date range"))),
      column(3,
             fileInput("file", h3("File input"))),
      column(3,
             h3("Help text"),
             helpText("Note: help text isn't a true widget,",
                      "but it provides an easy way to add text to",
                      "accompany other widgets.")),
      column(3,
             numericInput("num",
                          h3("Numeric input"),
                          value = 1))
    ),
    fluidRow(
      column(3,
             radioButtons("radio", h3("Radio buttons"),
                          choices = list("Choice 1" = 1, "Choice 2" = 2,
                                         "Choice 3" = 3),selected = 1)),
      column(3,
             selectInput("select", h3("Select box"),
                         choices = list("Choice 1" = 1, "Choice 2" = 2,
                                        "Choice 3" = 3), selected = 1)),
      column(3,
             sliderInput("slider1", h3("Sliders"),
                         min = 0, max = 100, value = 50),
             sliderInput("slider2", "",
                         min = 0, max = 100, value = c(25, 75))
      ),
      column(3,
             textInput("text", h3("Text input"),
                       value = "Enter text..."))
   )
  ),

  navbarMenu("More",
    tabPanel("Sub-Component A"),
    tabPanel("Sub-Component B"))
)

# Define server logic ----
server <- function(input, output) {

}

# Run the app ----
shinyApp(ui = ui, server = server)
