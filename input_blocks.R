#' box building functions for the ui.R
#'
#'
#' build data entry boxes for data tab
#'

discName_box <- function() {
  f7ExpandableCard(
    id = "discAdderBox",
    title = "Add Discs",
    discNameModal,
    header =
      f7Text(
        inputId = "discName",
        label = "Disc Name",
        value = "",
        placeholder = "Enter Disc Name"
      ),
    f7Text(
      inputId = "discColor",
      label = "Disc Color",
      value = "",
      placeholder = "Enter Disc Color"
    ),
    f7DatePicker(
      inputId = "discAge",
      label = "Puchase Date",
      dateFormat = "mm-yyyy"
    ),
    f7Text(
      inputId = "discWeight",
      label = "Disc Weight (grams)",
      placeholder = "173"
    ),
    f7Picker(
      inputId = "discSpeed",
      label = "Disc Speed",
      choices = c(1:15)
    ),
    f7Picker(
      inputId = "discGlide",
      label = "Disc Glide",
      choices = c(0:8),
    ),
    f7Picker(
      inputId = "discTurn",
      label = "Disc Turn",
      choices = c(0:-5)
    ),
    f7Picker(
      inputId = "discFade",
      label = "Disc Fade",
      choices = c(0:4)
    ),
    f7Picker(
      inputId = "discCondition",
      label = "Disc Condition",
      choices = c("Mint", "Like New", "Good",
                  "Worn", "Destroyed")
    ),
    f7Picker(
      inputId = "discType",
      label = "Disc Type",
      choices = c(
        "Putter",
        "Approach",
        "Mid",
        "Fairway / Control Driver",
        "Distance Driver"
      )
    ),
    f7Button(inputId = "addDisc",
             label = "Add Disc To Collection")
  )
}

dataEntry_block <- function() {
  f7Block(
    inset = TRUE,
    strong = TRUE,
    hairlines = TRUE,
    f7BlockTitle(title = "Enter New Data") %>% f7Align(side = "center"),
    f7Accordion(
      id = "dataEntryAccordian",
      discName_accordian_item,
      instructional_media_accordian_item,
      exercise_accordian_item
    )
  )
}

discName_accordian_item <- f7AccordionItem(
  title = "Add New Disc To Collection",
  f7Text(
    inputId = "discName",
    label = "Disc Name",
    value = "",
    placeholder = "Enter Disc Name"
  ),
  f7Text(
    inputId = "discColor",
    label = "Disc Color",
    value = "",
    placeholder = "Enter Disc Color"
  ),
  f7DatePicker(
    inputId = "discAge",
    label = "Puchase Date",
    dateFormat = "mm-yyyy"
  ),
  f7Text(
    inputId = "discWeight",
    label = "Disc Weight (grams)",
    placeholder = "173"
  ),
  f7Stepper(
    inputId = "discSpeed",
    label = h3("Disc Speed"),
    min = 1,max = 14,value = 1,
    size = "small",
    wraps = TRUE
  ),
  f7Stepper(
    inputId = "discGlide",
    label = h3("Disc Glide"),
    min = 0,max = 7,value = 1,
    size = "small",
    wraps = TRUE
  ),
  f7Stepper(
    inputId = "discTurn",
    label = h3("Disc Turn"),
    min = -5,max = 0,value = 0,
    size = "small",
    wraps = TRUE
  ),
  f7Stepper(
    inputId = "discFade",
    label = h3("Disc Fade"),
    min = 0,max = 5,value = 1,
    size = "small",
    wraps = TRUE
  ),
  f7Picker(
    inputId = "discCondition",
    label = "Disc Condition",
    choices = c("Mint", "Like New", "Good",
                "Worn", "Destroyed")
  ),
  f7Picker(
    inputId = "discType",
    label = "Disc Type",
    choices = c(
      "Putter",
      "Approach",
      "Mid",
      "Fairway / Control Driver",
      "Distance Driver"
    )
  ),
  f7Button(inputId = "discAdd",
           label = "Add Disc To Collection")
)


instructional_media_accordian_item <- f7AccordionItem(
    title = "Add Instructional Media Experience",
    f7TextArea(
      inputId ="instructionalMediaSidebarText",
      label = "Do You Learn Better From YouTube or Blogs? Lets See..",
      value = "Here we collect information like movies and articles you have watched and read in order to help you disc golf game. Media such as How To Putt Better In 5 Steps along with how many times you have consumed the media and when you did so. This information will be compiled along with your performance and practice data in search of any insights or perceived perfomance edges you may have received."
    ),
    f7Select(
      inputId = "mediaType",
      label = "Media Type",
      choices = c("Video",
                  "Article",
                  "Workshop",
                  "FirstHand Account")
    ),
    f7Select(
      inputId = "mediaForm",
      label = "What Form Did This Touch On",
      choices = c("General Disc Golf",
                  "Putting",
                  "Driving",
                  "Upshot",
                  "Strategy",
                  "Multiple")
    ),
    f7Text(
      inputId = "mediaRepeats",
      label = "How Many Times Did You Watch / Read",
      value = 1
    ),
    f7Text(
      inputId = "mediaTime",
      label = "Time Invested Watching / Reading (min)",
      placeholder = "min"
    ),
    f7Button(
      inputId = "mediaAdd",
      label = "Add Instructional To Data"
    )
  )


exercise_accordian_item <- f7AccordionItem(
  title = "Add An Exercise Or Training Session",
  f7TextArea(
    inputId ="exerciseText",
    label = "Are All Exercises Routines Created Equally? Of Course Not! What Works Best For You?",
    value = "This should be pretty straight forward. Enter information on your exercise and training routines. The data will be accumulated along with performance data in search of insights and correlations between how well you are doing and how many times or which practices you have been doing."
  ),
  f7Select(
    inputId = "activityType",
    label = "Type Of Activity",
    choices = c(
      "Pro-Pull",
      "Elevens",
      "Five-Up",
      "Ten-Up",
      "Towel Drill",
      "Driving Net",
      "Free Putt"
    ),
    selected = "Pro-Pull"
  ),
  f7DatePicker(
    inputId = "activityDate",
    label = "Date of Activity",
    dateFormat = "dd-mm-yyyy"
  ),
  timeInput(
    inputId = "activityTime",
    label = "Start Time 24hr (HR MN)",
    seconds = FALSE,
    value = Sys.time()
    ),
  f7Text(
    inputId = "activityLength",
    label = "Enter Length of Exercise (min)",
    placeholder = "min"
  ),
  conditionalPanel(condition = "input.activityType == 'Pro-Pull'",
                   f7Select(
                     inputId = "hand",
                     label = "Backhand / Forehand",
                     choices = c("Backhand", "Forehand")
                   ),
                   f7Select(
                     inputId = "resistanceBand",
                     label = "Resistance Band",
                     choices = c("Yellow", "Green", "Yellow & Green")
                   ),
                   f7Stepper(inputId = "propullReps",
                             label = h3("Number of Reps"),
                             min = 1,max = 99,value = 1,
                             color = "blue", fill = FALSE,
                             wraps = TRUE
                             )
                   ),
  conditionalPanel(condition = "input.activityType == 'Elevens'",
                   f7Stepper(
                     inputId = "elevens11Made",
                     label = h3("Shots Made At 11ft"),
                     min = 0,max = 5,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                     ),
                   f7Stepper(
                     inputId = "elevens22Made",
                     label = h3("Shots Made At 22ft"),
                     min = 0,max = 5,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                     ),
                   f7Stepper(
                     inputId = "elevens33Made",
                     label = h3("Shots Made At 33ft"),
                     min = 0,max = 5,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                     ),
                   f7Stepper(
                     inputId = "elevens44Made",
                     label = h3("Shots Made At 44ft"),
                     min = 0,max = 5,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                     ),
                   f7Stepper(
                     inputId = "elevens55Made",
                     label = h3("Shots Made At 55ft"),
                     min = 0,max = 5,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                     )
                   ),
  conditionalPanel(condition = "input.activityType == 'Five-Up'",
                   f7Stepper(
                     inputId = "fiveUp10Made",
                     label = h3("Shots Made At 10ft"),
                     min = 0,max = 50,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                     ),
                   f7Stepper(
                     inputId = "fiveUp15Made",
                     label = h3("Shots Made At 15ft"),
                     min = 0,max = 50,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                     ),
                   f7Stepper(
                     inputId = "fiveUp20Made",
                     label = h3("Shots Made At 20ft"),
                     min = 0,max = 50,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                     ),
                   f7Stepper(
                     inputId = "fiveUp25Made",
                     label = h3("Shots Made At 25ft"),
                     min = 0,max = 50,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                     ),
                   f7Stepper(
                     inputId = "fiveUp30Made",
                     label = h3("Shots Made At 30ft"),
                     min = 0,max = 50,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                     )
                   ),
  conditionalPanel(condition = "input.activityType == 'Ten-Up'",
                   f7Stepper(
                     inputId = "tenUp10Made",
                     label = h3("Shots Made At 10ft"),
                     min = 0,max = 50,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                   ),
                   f7Stepper(
                     inputId = "tenUp15Made",
                     label = h3("Shots Made At 15ft"),
                     min = 0,max = 50,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                   ),
                   f7Stepper(
                     inputId = "tenUp20Made",
                     label = h3("Shots Made At 20ft"),
                     min = 0,max = 50,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                   ),
                   f7Stepper(
                     inputId = "tenUp25Made",
                     label = h3("Shots Made At 25ft"),
                     min = 0,max = 50,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                   ),
                   f7Stepper(
                     inputId = "tenUp30Made",
                     label = h3("Shots Made At 30ft"),
                     min = 0,max = 50,value = 0,
                     color = "blue", fill = FALSE,
                     wraps = TRUE
                   )
  ),
  conditionalPanel(condition = "input.activityType == 'Towel Drill'",
                   f7Stepper(
                     inputId = "towelDrillReps",
                     label = h3("Number of Reps"),
                     min = 1,max = 99,value = 1,
                     color = "blue",fill = FALSE, 
                     wraps = TRUE
                   )
                   ),
  conditionalPanel(condition = "input.activityType == 'Driving Net'",
                   f7Select(
                     inputId = "throwForm",
                     label = "Throw Form",
                     choices = c("Backhand","Forehand","Backhand and Forehand"),
                     )
                   ),
  conditionalPanel(condition = "input.activityType == 'Free Putt'",
                   f7Select(
                     inputId = "freePuttLocation",
                     label = "Where Did You Putt (min)",
                     choices = c("Home","Park","Course","Another Home")
                     )
                   )
  )