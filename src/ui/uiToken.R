#------------------------------------------------------------------
# Program  : uiToken.R
# Objective:  
# Author   : I.Sanchez
# Creation : 29/05/2018
# Update   : 31/05/2018
#------------------------------------------------------------------


tabItem(tabName="subToken",
        fluidRow(
          box(id="token1", class="token",width=12, height = 700,title="Token to access the web service",
              verbatimTextOutput("token1")
          ),
          box(id="token2", class="token",width=12, height = 750,title="Category Imagery",
              dataTableOutput("token2")
          ),
          box(id="token3", class="token",width=12, height = 750,title="Category Environment",
              dataTableOutput("token3")
          ),
          box(id="token4", class="token",width=12, height = 500,title="Category Watering",
              dataTableOutput("token4")
          ),
          box(id="token5", class="token",width=12, height = 400,title="Category Weighing",
              dataTableOutput("token5")
          ),
          box(id="token6", class="token",width=12, height = 500,title="Category Phenotyping",
              dataTableOutput("token6")
          )# end box
        )# end fluidRow
)# end tabItem

