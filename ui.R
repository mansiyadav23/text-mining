library(shiny)
library(shinydashboard)

###################
####### BODY ######
###################

body <- dashboardBody(
  h4("Please select a question from the left sidebar"),

  tabItems(
    
    #overview WORDCLOUD 
    tabItem(tabName = "Wordcloud",
            h1("Overview Wordcloud"),
            
            sliderInput("WordcloudSlider", "Size of Wordcloud",
                        min= 1, max = 50, value = 1, step=1),
            
            fluidRow(
              plotOutput("word_graph", height =500))
    ),
    
    #overview TFIDF 
    tabItem(tabName = "TFIDF",
            h1("Overview TFIDF"),
            
            selectInput("TfIdf", "Choose the Question for the Tf Idf Graph",
                        c("Question 1" = "1",
                          "Question 2" = "2",
                          "Question 3" = "3",
                          "Question 4" = "4",
                          "Question 5" = "5",
                          "Question 6" = "6",
                          "Question 7" = "7",
                          "Question 8" = "8"
                          )),
            fluidRow(
              plotOutput("tfidf_graph", height =500))
    ),
    
    
    #overview LDA 
    tabItem(tabName = "LDA",
            h1("Overview of LDA Model"),
            
        sidebarPanel(
              sliderInput("ldaslider", "Number of Topics - K",
                          min= 2, max = 4, value = 2, step=1)),
            fluidRow(
              plotOutput("plot_lda", height =800))
            
    ),
    
    #page 1    
    tabItem(tabName = "1",
            h1("Q1: Tell me about your previous work experience"),
            
            h3("Frequency (Top 3 Words)"),
            fluidRow(
              valueBox(
                value = "Experience",
                subtitle = 8,
                color = "navy"),
              valueBox(
                value = "Marketing",
                subtitle = 7,
                color = "blue"),
              valueBox(
                value = "Analyst",
                subtitle = 5,
                color = "light-blue")),
            
            h3("Sentiment Word Cloud Bing"),
            fluidRow(
              plotOutput("plot1", height =1050))
    ),
    
    #page 2    
    tabItem(tabName = "2",
            h1("Q2: Where and what did you study your undergraduate degree?"),
            
            h3("Frequency (Top 3 Words)"),
            fluidRow(
              valueBox(
                value = "International",
                subtitle = 5,
                color = "navy"),
              valueBox(
                value = "Marketing",
                subtitle = 5,
                color = "blue"),
              valueBox(
                value = "Engineering",
                subtitle = 4,
                color = "light-blue")),
            
            h3("Bi Gram Pairs"),
            fluidRow(
              plotOutput("plot2_2", height =350))
    ),
    
    #page 3    
    tabItem(tabName = "3",
            h1("Q3: Where were you born, and where did you grow up?"),
            
            h3("Frequency (Top 3 Words)"),
            fluidRow(
              valueBox(
                value = "China",
                subtitle = 6,
                color = "navy"),
              valueBox(
                value = "India",
                subtitle = 4,
                color = "blue"),
              valueBox(
                value = "Africa",
                subtitle = 3,
                color = "light-blue")),
            
            
            h3("Bi Gram Pairs"),
            fluidRow(
              plotOutput("plot3_2", height =350))
    ),
    
    #page 4
    tabItem(tabName = "4",
            h1("Q4: What countries and cities are you looking to apply or work in?"),
            
            h3("Frequency (Top 3 Words)"),
            fluidRow(
              valueBox(
                value = "Francisco",
                subtitle = 13,
                color = "navy"),
              valueBox(
                value = "York",
                subtitle = 6,
                color = "blue"),
              valueBox(
                value = "Boston",
                subtitle = 3,
                color = "light-blue")),
            
            h3("Bi Gram Pairs"),
            fluidRow(
              plotOutput("plot4_2", height =350))
            
    ),
    
    # page 5  
    tabItem(tabName = "5",
            h1("Q5: Do you need sponsorship or change of visa status to work in the places you are applying in?"),
            
            h3("Frequency (Top 3 Words)"),
            fluidRow(
              valueBox(
                value = "Sponsorship",
                subtitle = 5,
                color = "navy"),
              valueBox(
                value = "Visa",
                subtitle = 4,
                color = "blue"),
              valueBox(
                value = "OPT",
                subtitle = 3,
                color = "light-blue")),
            
            h3("Bi Gram Pairs"),
            fluidRow(
              plotOutput("plot5_2", height =350))
    ),
    
    #page 6    
    tabItem(tabName = "6",
            h1("Q6: How is your job search going?"),
            
            h3("Frequency (Top 3 Words)"),
            fluidRow(
              valueBox(
                value = "applied",
                subtitle = 4,
                color = "navy"),
              valueBox(
                value = "months",
                subtitle = 4,
                color = "blue"),
              valueBox(
                value = "started",
                subtitle = 3,
                color = "light-blue")),
            
            h3("Sentiment Word Cloud Bing"),
            fluidRow(
              plotOutput("plot6", height =1050))
    ),
    
    # page 7   
    tabItem(tabName = "7",
            h1("Q7: What are some industries and companies you are looking to apply for?"),
            
            h3("Frequency (Top 3 Words)"),
            fluidRow(
              valueBox(
                value = "Finance",
                subtitle = 5,
                color = "navy"),
              valueBox(
                value = "Marketing",
                subtitle = 4,
                color = "blue"),
              valueBox(
                value = "Entertainment",
                subtitle = 3,
                color = "light-blue")),
            
            h3("Bi Gram Pairs"),
            fluidRow(
              plotOutput("plot7_2", height =350))
    ),
    
    #page 8   
    tabItem(tabName = "8",
            h1("Q8: What roles are you looking at?"),
            
            h3("Frequency (Top 3 Words)"),
            fluidRow(
              valueBox(
                value = "Analyst",
                subtitle = 18,
                color = "navy"),
              valueBox(
                value = "Business",
                subtitle = 11,
                color = "blue"),
              valueBox(
                value = "Marketing",
                subtitle = 6,
                color = "light-blue")),
            
            h3("Bi Gram Pairs"),
            fluidRow(
              plotOutput("plot8_2", height =350))
    ),
    
    #page 9    
    tabItem(tabName = "9",
            h1("Q9: Do you have a job offer?"),
            
            h3("Frequency (Top 3 Words)"),
            fluidRow(
              valueBox(
                value = "No",
                subtitle = 13,
                color = "navy"),
              valueBox(
                value = "Yes",
                subtitle = 7,
                color = "blue"),
              valueBox(
                value = "Internship",
                subtitle = 2,
                color = "light-blue")),
            
            h3("Job Offer Results"),
            fluidRow(
              plotOutput("plot9", height =700)),
    
            tags$head( 
              tags$style(HTML(".main-sidebar { font-size: 16px; }")) #change the font size to 20
            )),
            
            # Bayes model
            tabItem(tabName = "Bayes",
                    h1("Performance of Bayes Model"),
                    
                    h3("Interesting Estimated Feature Scores for 0"),
                    fluidRow(
                      valueBox(
                        value = "bank",
                        subtitle = 0.6575,
                        color = "red"),
                      valueBox(
                        value = "business",
                        subtitle = 0.6056,
                        color = "red"),
                      valueBox(
                        value = "salvador",
                        subtitle = 0.7191,
                        color = "red")),
                    
                    h3("Interesting Estimated Feature Scores for 1"),
                    fluidRow(
                      valueBox(
                        value = "san",
                        subtitle = 0.5486,
                        color = "green"),
                      valueBox(
                        value = "francisco",
                        subtitle = 0.6411,
                        color = "green"),
                      valueBox(
                        value = "bay",
                        subtitle = 0.7576,
                        color = "green")),
                    
                    h3("Performance of the Model on Training Set"),
                    fluidRow(
                      valueBox(
                        value = "Responder (6) - No",
                        subtitle = 0,
                        color = "orange"),
                      valueBox(
                        value = "Responder (7) - No",
                        subtitle = 0,
                        color = "orange"),
                      valueBox(
                        value = "Responder (8) - No",
                        subtitle = 0,
                        color = "orange"),
                      valueBox(
                        value = "Responder (9) - Yes",
                        subtitle = 1,
                        color = "orange"))
            
    )))




###################
#### SIDE BAR #####
###################


sidebar <- dashboardSidebar(
  menuItem("Overview - Wordcloud", tabName = "Wordcloud",icon = icon('dashboard')),
  menuItem("Overview - TFIDF", tabName = "TFIDF",icon = icon('dashboard')),
  menuItem("Overview - LDA", tabName = "LDA",icon = icon('dashboard')),
  menuItem("Question 1", tabName = "1",icon = icon('th')),
  menuItem("Question 2", tabName = "2",icon = icon('th')),
  menuItem("Question 3", tabName = "3",icon = icon('th')),
  menuItem("Question 4", tabName = "4",icon = icon('th')),
  menuItem("Question 5", tabName = "5",icon = icon('th')),
  menuItem("Question 6", tabName = "6",icon = icon('th')),
  menuItem("Question 7", tabName = "7",icon = icon('th')),
  menuItem("Question 8", tabName = "8",icon = icon('th')),
  menuItem("Question 9", tabName = "9",icon = icon('th')),
  menuItem("Overview - Bayes", tabName = "Bayes",icon = icon('dashboard'))
)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
    
  dashboardPage(header = dashboardHeader( title = "Valencia, Team 4"),
                sidebar = sidebar,
                body = body,
               
    )
  )
)
