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

#' data entry block
#' build block to hold all data entry forms and surveys
#' This block will use variables to call in each form / survey 
#' as an accordion item / expandable menu

dataEntry_block <- function() {
  f7Block(
    inset = TRUE,
    strong = TRUE,
    hairlines = TRUE,
    f7BlockTitle(title = "Enter New Data") %>% f7Align(side = "center"),
    f7Accordion(
      id = "dataEntryAccordion",
      discName_accordion_item,
      instructional_media_accordion_item,
      exercise_accordion_item,
      throw_accordion_item,
      wellbeing_accordion_item
    )
  )
}

discName_accordion_item <- f7AccordionItem(
  title = "Add Disc To Collection",
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
  f7Select(
    inputId = "discCondition",
    label = "Disc Condition",
    choices = c("Mint" = 5,
                "Like New" = 4,
                "Good" = 3,
                "Worn" = 2,
                "Destroyed" = 1
                ),
    selected = "Good"
  ),
  f7Select(
    inputId = "discType",
    label = "Disc Type",
    choices = c(
      "Putter",
      "Approach",
      "Mid",
      "Fairway / Control Driver",
      "Distance Driver"
    ),
    selected = "Putter"
  ),
  f7Button(inputId = "discAdd",
           label = "Add Disc To Collection")
)


instructional_media_accordion_item <- f7AccordionItem(
    title = "Add Instructional Media",
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
                  "FirstHand Account"),
      selected = "Video"
    ),
    f7Select(
      inputId = "mediaForm",
      label = "Topic Of Content",
      choices = c("General Disc Golf",
                  "Putting",
                  "Driving",
                  "Upshot",
                  "Strategy",
                  "Multiple"),
      selected = "General Disc Golf"
    ),
    f7Text(
      inputId = "mediaRepeats",
      label = "How Many Times Did You Watch / Read",
      value = 1
    ),
    f7Text(
      inputId = "mediaTime",
      label = "Time Watching / Reading (min)",
      placeholder = "min"
    ),
    f7Button(
      inputId = "mediaAdd",
      label = "Add Instructional To Data"
    )
  )


exercise_accordion_item <- f7AccordionItem(
  title = "Add Training Session",
  f7TextArea(
    inputId ="activityText",
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
                     choices = c("Backhand", "Forehand"),
                     selected = "Backhand"
                   ),
                   f7Select(
                     inputId = "resistanceBand",
                     label = "Resistance Band",
                     choices = c("Yellow", "Green", "Yellow & Green"),
                     selected = "Yellow"
                   ),
                   f7Stepper(inputId = "propullReps",
                             label = h3("Number of Reps"),
                             min = 1,max = 99,value = 1,
                             color = "blue", fill = FALSE,
                             wraps = TRUE
                             )
                   ),
  conditionalPanel(condition = "input.activityType == 'Elevens'",
                   f7Select(
                     inputId = "activityPuttingStyle",
                     label = "Putting Style",
                     choices = c("Push Putt",
                                 "Spin Putt",
                                 "Hybrid",
                                 "Spin and Push Putt"),
                     selected = "Hybrid"
                     ),
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
                   f7Select(
                     inputId = "activityPuttingStyle",
                     label = "Putting Style",
                     choices = c("Push Putt",
                                 "Spin Putt"
                                 ,"Hybrid",
                                 "Spin and Push Putt"),
                     selected = "Hybrid"
                   ),
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
                   f7Select(
                     inputId = "activityPuttingStyle",
                     label = "Putting Style",
                     choices = c("Push Putt",
                                 "Spin Putt",
                                 "Hybrid",
                                 "Spin and Push Putt"),
                     selected = "Hybrid"
                   ),
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
                     inputId = "activityThrowForm",
                     label = "Throw Form",
                     choices = c("Backhand",
                                 "Forehand",
                                 "Backhand & Forehand"
                                 ),
                     selected = "Backhand & Forehand"
                     )
                   ),
  conditionalPanel(condition = "input.activityType == 'Free Putt'",
                   f7Select(
                     inputId = "activityPuttingStyle",
                     label = "Putting Style",
                     choices = c("Push Putt",
                                 "Spin Putt",
                                 "Hybrid",
                                 "Spin and Push Putt"),
                     selected = "Hybrid"
                   ),
                   f7Select(
                     inputId = "freePuttLocation",
                     label = "Where Did You Putt (min)",
                     choices = c("Home","Park","Course","Another Home"),
                     selected = "Home"
                     )
                   )
  )

throw_accordion_item <- f7AccordionItem(
  title = "Add Throw",
  f7AutoComplete(
    inputId = "throwDiscName",
    label = "Disc Name",
    placeholder = "Enter Disc Name",
    choices = c("Load Choices From gSheets",
                "Use googleSheets4 Library"
                ),
    openIn = "page"
  ),
  f7Text(
    inputId = "throwDistance",
    label = "Distance Of Throw (feet)",
    placeholder = "Feet",
  ),
  f7Select(
    inputId = "throwForm",
    label = "Throw Form",
    choices = c("Backhand",
                "Forehand",
                "Other"),
    selected = "Backhand"
  ),
  f7Select(
    inputId = "throwWeather",
    label = "Weather Conditions",
    choices = c("Fair",
                "Windy",
                "Cold",
                "Windy & Cold"
                ),
    selected = "Fair"
  ),
  conditionalPanel(condition = "input.throwWeather == 'Windy' ||
                   input.throwWeather == 'Windy & Cold'",
                   f7Select(
                     inputId = "throwWindDirection",
                     label = "Direction of Wind",
                     choices = c("Head Wind",
                                 "Tail Wind"
                                 )
                   )
                   ),
  f7Select(
    inputId = "throwElevation",
    label = "Elevation Change During Throw",
    choices = c("None, Flat",
                "Incline",
                "Decline"),
    selected = "Non, Flat"
  ),
  f7Button(
    inputId = "throwSubmit",
    label = "Submit Throw"
  )
)

wellbeing_accordion_item <- f7AccordionItem(
  title = "Wellbeing Survey",
  f7TextArea(
    inputId = "wellbeingAbout",
    label = "For Best Results Answer Twice Daily",
    value = "Once when you wake up and once before bed. The Wellbeing Survey consists of a set of subjective question focused around your current emotional and physical wellbeing. You should not think too hard to spend much time on any single question. There are no right answers, only how you feel. Do not hesitate when you feel between two optional states. The wonders of statistics will take care of any fuss between exactly pinning down the best possible answer for any one question. It is far more important that you answer the questions as consistently as possible. That requires quick, no fuss responses."
  ),
  f7DatePicker(
    inputId = "wellbeingDate", 
    label = "Select Date"
  ),
  f7Radio(
    inputId = "wellbeingTimeOfDay",
    label = "Time Of Day",
    choices = c("AM","PM")
  ),
  f7Select(
    inputId = "wellbeingWholeness",
    label = "How Do You Feel?",
    choices = c("At One" = 5,
                "Calm" = 4,
                "Normal" = 3,
                "Irritable" = 2,
                "Pissed Off" = 1),
    selected = "Normal"
  ),
  f7Select(
    inputId = "wellbeingHydration",
    label = "Level of Hydration",
    choices = c("Very Hydrated" = 5,
                "Normal" = 3,
                "Dehydrated" = 1),
    selected = "Normal"
  ),
  f7Stepper(
    inputId = "wellbeingSleep",
    label = h3("Hours Slept Last Night"),
    min = 0,max = 12,value = 8,
    size = "small",
    wraps = TRUE
  ),
  f7Select(
    inputId = "wellbeingEnergy",
    label = "Amount of Energy",
    choices = c("Buzzed" = 5,
                "Alert" = 4,
                "Normal" = 3,
                "Low" = 2,
                "Dead" = 1),
    selected = "Normal"
  ),
  f7Select(
    inputId = "wellbeingEmotion",
    label = "Current Emotion",
    choices = c("High" = 5,
                "Normal" = 3,
                "Depressed" = 1),
    selected = "Normal"
  ),
  f7Select(
    inputId = "wellbeingFocus",
    label = "Level of Focus",
    choices = c("Laser Focus" = 5,
                "Focused" = 4,
                "Normal" = 3,
                "Destracted" = 2,
                "Spaced Out" = 1),
    selected = "Normal"
  ),
  f7Stepper(
    inputId = "wellbeingMeal",
    label = h3("Hours Since Last Meal"),
    min = 0,max = 24,value = 4,
    size = "small",
    wraps = TRUE
  ),
  f7Select(
    inputId = "wellbeingMuscles",
    label = "Are Your Muscles",
    choices = c("Warmed-Up" = 5,
                "Normal" = 3,
                "Cold" = 1),
    selected = "Normal"
  ),
  f7Select(
    inputId = "wellbeingBody",
    label = "Does Your Body Feel",
    choices = c("Limber" = 5,
                "Normal" = 3,
                "Stiff / Sore" = 1),
    selected = "Normal"
  ),
  f7Button(
    inputId = "wellbeingSubmit",
    label = "Submit Wellbeing Survey"
  ),
  
  #' conditional panels for reflection / inflection
  #' based on time of day
  #' 'How Do You Expect Today To Go?' in the AM
  #' 'How Did Today Go?' in the PM
  conditionalPanel(condition = "input.wellbeingTimeOfDay == 'AM'",
                   f7Select(
                     inputId = "wellbeingProjection",
                     label = "How Do You Expect Today To Go For You?",
                     choices = c("Amazing, Best Day" = 5,
                                 "Going To Be A Good Day" = 4,
                                 "Today Will Be Normal, Like Most" = 3,
                                 "I Don't Expect Much / Not Too Great" = 2,
                                 "I Have A Feeling Today Is Going To Be Aweful" = 1),
                     selected = 3
                   )
                   ),
  conditionalPanel(condition = "input.wellbeingTimeOfDay == 'PM'",
                   f7Select(
                     inputId = "wellbeingReflection",
                     label = "How Was Your Day Today?",
                     choices = c("Amazing, Best Day" = 5,
                                 "Today Was A Good Day" = 4,
                                 "Today Was Normal, Like Most" = 3,
                                 "Today Was Not So Great / Somewhat Bad" = 2,
                                 "Today Was Aweful" = 1),
                     selected = 3
                   )
  )
)

