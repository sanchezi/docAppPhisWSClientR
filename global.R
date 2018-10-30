#------------------------------------------------------------------
# Program  : global.R
# Objective: this program 
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

## global parameters -----------------------------------------------------------
options(warn=-1,digits = 3) # don't show warnings

if(Sys.info()["sysname"] == "Windows"){
  Sys.setlocale("LC_ALL", "English")
} else
  Sys.setlocale("LC_ALL", "en_US.UTF-8")

## position parameters ---------------------------------------------------------
BOXHEIGHT = "810px"

## graphic parameters ----------------------------------------------------------
# colors
MYCOLORS <- c(orange = "#f47835",
              blue = "#00c0f1",
              green = "#189b14",
              red = "#d00013",
              purple = "#a200ff",
              brown = "#946F0A",
              darkBlue = "#1B2DB5",
              pink = "#E261E6",
              gray = "#A3A3A3",
              lightGreen = "#8ee98c")

