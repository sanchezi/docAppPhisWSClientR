#------------------------------------------------------------------
# Program  : uiAbout.R
# Objective:  
# Author   : I.Sanchez
# Creation : 29/05/2018
# Update   : 31/05/2018
#------------------------------------------------------------------


tabItem(tabName="about",
        fluidRow(
          box(width=12, height = 420,
              div(id="about2", class="about",
                  style="margin: 0px 0px 50px 0px;",
                  h1("How to use this documentation App?"),
                  p(HTML("<span>Please click on </span>"),
                    HTML("<span class=\"fLetter\">WS access</span>"),
                    HTML("<span> to scroll down the menu</span>")
                  ),
                  p("Enter a ",tags$b("username, password, server and port address")," if you want a private access to the phenomeapi WS"),
                  p("Keep the default",tags$b("username and password")," if you want a public access to the WS"),
                  p("Please, give an",tags$b(" experiment URI")," for which you want to know the available variables"),
                  p("Click on the", HTML("<span class=\"fLetter\">submit button</span>"),", each time you change your settings"),
                  p("You can retrieve the variable names usable in the",
                    HTML("<span class=\"fLetter\">phisWSClientR get()</span>"),
                    " functions in the ",tags$b("observationVariableId"),
                    " colname of each dataset")
              )
          ),
          box(width=12, height = 200,
              div(id="about2", class="about",
                  style="margin: 0px 0px 50px 0px;",
                  h1("Credits:"),
                  p("isabelle.sanchez@inra.fr - INRA MISTEA - openSILEX - 2018"),
                  p("GPL-3 license")
              )
          ),
          box(width=12, height = 500,
              div(id="about1", class="about",
                  style="margin: 0px 0px 50px 0px;",
                  h1("Session Info"),
                  verbatimTextOutput("about")
                  )
          )# end box
        )# end fluidRow
)# end tabItem
