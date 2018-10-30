#------------------------------------------------------------------
# Program  : server.R
# Objective:  
# Author   : I.Sanchez
# Creation : 29/05/2018
# Update   : 31/05/2018
#------------------------------------------------------------------

## packages --------------------------------------------------------------------
library(shiny)
library(shinyjs)
library(shinydashboard)
library(DT)

library(phisWSClientR)

## Shiny server  ---------------------------------------------------------------
shinyServer(function(input, output, session){
  source("src/server/serverWelcome.R", local=TRUE, encoding="UTF-8")$value
  source("src/server/serverToken.R", local=TRUE, encoding="UTF-8")$value
  source("src/server/serverAbout.R", local=TRUE, encoding="UTF-8")$value
  
  # Hide the loading message (js script)
  session$sendCustomMessage("initializedMessage", 0)
  
})
