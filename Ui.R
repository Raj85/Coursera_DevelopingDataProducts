library(shiny)
shinyUI(bootstrapPage(fluidPage(
  headerPanel("Comparison and Commonality Word Cloud Generator"),
  sidebarPanel(
                  textInput("text1", label = "Enter your 1st text", value = "And we will safeguard America's own security against those who threaten our citizens, our friends, and our interests. Look at Iran. Through the power of our diplomacy, a world that was once divided about how to deal with Iran's nuclear program now stands as one. The regime is more isolated than ever before; its leaders are faced with crippling sanctions, and as long as they shirk their responsibilities, this pressure will not relent. Let there be no doubt: America is determined to prevent Iran from getting a nuclear weapon, and I will take no options off the table to achieve that goal. But a peaceful resolution of this issue is still possible, and far better, and if Iran changes course and meets its obligations, it can rejoin the community of nations.
The renewal of American leadership can be felt across the globe. Our oldest alliances in Europe and Asia are stronger than ever. Our ties to the Americas are deeper. Our iron-clad commitment to Israel's security has meant the closest military cooperation between our two countries in history. We've made it clear that America is a Pacific power, and a new beginning in Burma has lit a new hope. From the coalitions we've built to secure nuclear materials, to the missions we've led against hunger and disease; from the blows we've dealt to our enemies; to the enduring power of our moral example, America is back.
                            Anyone who tells you otherwise, anyone who tells you that America is in decline or that our influence has waned, doesn't know what they're talking about. That's not the message we get from leaders around the world, all of whom are eager to work with us. That's not how people feel from Tokyo to Berlin; from Cape Town to Rio; where opinions of America are higher than they've been in years. Yes, the world is changing; no, we can't control every event. But America remains the one indispensable nation in world affairs - and as long as I'm President, I intend to keep it that way."),
                  textInput("text2", label = "Enter your 2nd text", value = "One of my proudest possessions is the flag that the SEAL Team took with them on the mission to get bin Laden. On it are each of their names. Some may be Democrats. Some may be Republicans. But that doesn't matter. Just like it didn't matter that day in the Situation Room, when I sat next to Bob Gates - a man who was George Bush's defense secretary; and Hillary Clinton, a woman who ran against me for president.All that mattered that day was the mission. No one thought about politics. No one thought about themselves. One of the young men involved in the raid later told me that he didn't deserve credit for the mission. It only succeeded, he said, because every single member of that unit did their job - the pilot who landed the helicopter that spun out of control; the translator who kept others from entering the compound; the troops who separated the women and children from the fight; the SEALs who charged up the stairs. More than that, the mission only succeeded because every member of that unit trusted each other - because you can't charge up those stairs, into darkness and danger, unless you know that there's someone behind you, watching your back.
                            So it is with America. Each time I look at that flag, I'm reminded that our destiny is stitc"),
                   actionButton("submit", "Generate Cloud!")
              ),
  
  mainPanel(
    
    strong("Word cloud instructions"),
    br(),
    p("Wait until the app is fully loaded , then just copy and paste either two songs or speeches or any two text of interest that you would like to compare and also find any common word patterns."),
    p("Use the text box 1 to enter your first text and text box 2 to enter your second text (Select all the default text and overwrite with the new text)"),
    br(),
    p("Then click generate cloud action button (In this case the there is no reactive code implemented so even before you click generate cloud the program might run)"),
    tags$ol(
      tags$li("The First Graph shows the Comparison Cloud"), 
      tags$li("The second graph shows the Commonality Cloud")
    ),
    br(),
    p("All the code is available on my github:", a("https://github.com/Raj85/Coursera_DevelopingDataProducts"), " where a detailed method used is listed"),
    
    plotOutput("cloud",width = "100%", height = "1000px" )
           )
  
)))