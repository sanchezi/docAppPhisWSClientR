#------------------------------------------------------------------
# Program  : uiAbout.R
# Objective:  
# Author   : I.Sanchez
# Creation : 29/05/2018
# Update   : 31/05/2018
#------------------------------------------------------------------


tabItem(tabName="about",
        fluidRow(
          box(width=12, height = 800,
              div(id="about1", class="about",
                  style="margin: 0px 0px 50px 0px;",
                  h1("About panel"),
                  verbatimTextOutput("about")
                  )
          ),
          box(width=12, height = 420,
              div(id="about2", class="about",
                  style="margin: 0px 0px 50px 0px;",
                  p("du texte explicatif!!!!")
              )
          )# end box
        )# end fluidRow
)# end tabItem
