#' shiny server function
#' 
#'

server <- function(input, output, session) {
    #' reactive exercise menu using update accordion item
    #observeEvent(input$activityType)
  output$imageLogo <- renderImage({

    list(
      src = "./images/root-fill-white.png",
      alt = "Finally freaking posted",
      height = "32px",
      width = "32px"
    )
  }, deleteFile = FALSE)
}