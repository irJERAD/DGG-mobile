library(shiny)
library(shinyMobile)

shinyApp(
  ui = f7Page(
    title = "Expandable Cards",
    f7SingleLayout(
      navbar = f7Navbar(
        title = "Expandable Cards",
        hairline = FALSE,
        shadow = TRUE
      ),
      f7ExpandableCard(
        id = "card1",
        title = "Expandable Card 1",
        color = "blue",
        subtitle = "Click on me pleaaaaase",
        "Framework7 - is a free and open source HTML mobile framework
       to develop hybrid mobile apps or web apps with iOS or Android
       native look and feel. It is also an indispensable prototyping apps tool
       to show working app prototype as soon as possible in case you need to."
      ),
      f7ExpandableCard(
        id = "card2",
        title = "Expandable Card 2",
        color = "green",
        "Framework7 - is a free and open source HTML mobile framework
       to develop hybrid mobile apps or web apps with iOS or Android
       native look and feel. It is also an indispensable prototyping apps tool
       to show working app prototype as soon as possible in case you need to."
      ),
      f7ExpandableCard(
        id = "card3",
        title = "Expandable Card 3",
        image = "https://i.pinimg.com/originals/73/38/6e/73386e0513d4c02a4fbb814cadfba655.jpg",
        "Framework7 - is a free and open source HTML mobile framework
        to develop hybrid mobile apps or web apps with iOS or Android
        native look and feel. It is also an indispensable prototyping apps tool
        to show working app prototype as soon as possible in case you need to."
      ),
      f7ExpandableCard(
        id = "card4",
        title = "Expandable Card 4",
        fullBackground = TRUE,
        image = "https://i.ytimg.com/vi/8q_kmxwK5Rg/maxresdefault.jpg",
        "Framework7 - is a free and open source HTML mobile framework
              to develop hybrid mobile apps or web apps with iOS or Android
              native look and feel. It is also an indispensable prototyping apps tool
              to show working app prototype as soon as possible in case you need to."
      )
    )
  ),
  server = function(input, output) {}
)