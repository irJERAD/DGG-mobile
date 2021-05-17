library(shiny)
library(shinyMobile)
library(shinyWidgets)
library(shinyTime)

library(icons)

#' load text variables
source("text.R")
#' load input boxes for ui
source("input_blocks.R")
ic <- icon_set("images")

ui <- f7Page(
        title = "My app",
        f7TabLayout(
            panels = tagList(
                f7Panel(title = "About The App",
                        side = "left",
                        theme = "light",
                        about_app, 
                        effect = "cover"),
                f7Panel(title = "About The Author",
                        side = "right",
                        theme = "dark",
                        about_author,
                        effect = "cover")
            ),
            navbar = f7Navbar(
                title = "DGG",
                hairline = TRUE,
                shadow = TRUE,
                leftPanel = TRUE,
                rightPanel = TRUE
            ),
            f7Tabs(
                animated = TRUE,
                #swipeable = TRUE,
                f7Tab(
                    tabName = "Data",
                    icon = f7Icon("table_badge_more"),
                    active = TRUE,
                    f7Align(h2("Acquire Data"),side = "center"),
                    dataEntry_block_inputs <- dataEntry_block()
                ),
                f7Tab(
                    tabName = "Throw",
                    icon = f7Icon("rocket_fill"),
                    active = FALSE,
                    f7Align(h2("Throws We Have Collected"),side = "center")
                ),
                f7Tab(
                    tabName = "Praxis",
                    icon = f7Icon("scope"),
                    active = FALSE,
                    f7Align(h2("Has Practice Made Perfect"),side = "center")
                ),
                f7Tab(
                    tabName = "Media",
                    icon = f7Icon("play_rectangle"),
                    active = FALSE,
                    f7Align(h2("Impact of Education"),side = "center")
                ),
                f7Tab(
                    tabName = "Emo",
                    icon = f7Icon("plus_slash_minus"),
                    active = FALSE,
                    f7Align(h2("Your Course of Wellbeing"),side = "center")
                ),
                f7Tab(
                    tabName = "Tips",
                    icon = f7Icon("pin"),
                    active = FALSE,
                    f7Align(h2("Some Tips, Ticks, and How To"),side = "center"),
                    f7ExpandableCard(
                    #  image = "/images/root-fill-white.png",
                      numberOfPutts
                    )
                )
            )
        )
    )