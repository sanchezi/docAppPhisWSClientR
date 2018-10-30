#------------------------------------------------------------------
# Program  : uiWelcome.R
# Objective:  
# Author   : I.Sanchez
# Creation : 29/05/2018
# Update   : 29/05/2018
#------------------------------------------------------------------


tabItem(tabName="welcome",
        fluidRow(
          box(width=12, height = 820,
              div(id="welcome1", class="welcome",
                  style="margin: 0px 0px 50px 0px;",
                  h1("phenomeapi web service documentation",
                     img(src="phisLogo.png", height=39.6,
                         style="margin: 0px 0px 0px 0px;")
                     ),
                  p(HTML("<span> An application to document the phenomeapi </span>"),
                    HTML("<span class=\"fLetter\">W</span><span>eb</span>"),
                    HTML("<span class=\"fLetter\">S</span><span>ervice</span>"),
                    HTML("<span> and the </span> "),
                    HTML("<span class=\"fLetter\">phisWSClientR</span><span> library</span>")),
                  
                  # images
                  p(img(src="Logo_INRA_2013.01.png", height=100,
                        style="margin: 0px 0px 0px 0px;"),
                  img(src="misteaLogo.png", height=150,
                        style="margin: 0px 0px 0px 0px;")
                  )), # end div welcome
              
              div(id="loading", class="welcome",
                  h2("Loading, please wait..."),
                  icon("gear", class="fa-spin fa-4x")
              ), # end div loading
              
              div(id="speech", class="welcome",
                  p("A set of functions to connect R to the phenomeapi web service in phenoarch greenhouse - PHIS-SILEX. 
                    You can retrieve phenotypic data from the phenoarch platform (GET imagery, environment, watering and weighing). 
                    Public access is allowed with specific login as well as private access if the user has an 
                    account on PHIS system information. This application gives the variables currently available via the 
                    phenomeapi web service")
              ), # end div speech
              
                div(id="ready", class="welcome", style="display: none;",
                    h2("Do not forget to test the phisWSCLientR package!")
                ) # end div ready
              
          )# end box
        )# end fluidRow
)# end tabItem
