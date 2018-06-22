#------------------------------------------------------------------
# Program  : ui.R
# Objective: design inspired by J.Diot!!
# Author   : I.Sanchez
# Creation : 29/05/2018
# Update   : 22/06/2018
#------------------------------------------------------------------

## packages --------------------------------------------------------------------
library(shiny)
library(shinyjs)
library(shinydashboard)
library(DT)

library(phisWSClientR)

## Shiny UI --------------------------------------------------------------------

## Parameters:
W_sideBar <- 400

## UI :
shinyUI(
  dashboardPage(title="phisWSClientR user documentation", skin="black",
                # app title
                dashboardHeader(title=tagList(img(src="phisLogo.png", height = 50), "\t phenome api."), titleWidth=W_sideBar),
                
                ##### dashboard sidebar items
                dashboardSidebar(width = W_sideBar,
                                 sidebarMenu(id="sidebarMenu",
                                             menuItem("Welcome", tabName="welcome"),
                                             menuItem("WS access", tabName="subToken", icon=icon("bolt"),
                                                      menuSubItem("Token required", tabName = "subToken"),
                                                      textInput("userIn", "username:",value ="guestphis@supagro.inra.fr"),
                                                      passwordInput("pwdIn", "pwd:",value = "guestphis"),
                                                      textInput("pathWSIn", "Only if private access - url:",value ="XX.XX.XX.XX:XXXX/aPathToWS"),
                                                      textInput("experimentURIIn", "Experiment:",width=380,
                                                                value = "http://www.phenome-fppn.fr/m3p/ARCH2017-03-30"),
                                                      submitButton("Load server")
                                                      ),
                                             menuItem("About", tabName="about")
                                 )
                ), # close dashboardSidebar
                
                ##### dashboard body
                dashboardBody(
                  # javascript tools:
                  useShinyjs(),
                  
                  # CSS and javascript file:
                  tags$head(
                    tags$link(rel = "stylesheet", type = "text/css", href = "custom.css"),
                    tags$script(src="script.js")
                  ),

                  # Tab items:
                  tabItems(
                    source("src/ui/uiWelcome.R", local=TRUE, encoding="UTF-8")$value,
                    source("src/ui/uiToken.R", local=TRUE, encoding="UTF-8")$value,
                    source("src/ui/uiAbout.R", local=TRUE, encoding="UTF-8")$value
                  )
                )# close dashboardBody
                
  ) # close dashboardPage
  
) # close shinyUI
