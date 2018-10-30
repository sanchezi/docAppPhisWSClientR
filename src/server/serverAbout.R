#------------------------------------------------------------------
# Program  : serverAbout.R
# Objective:  
# Author   : I.Sanchez
# Creation : 29/05/2018
# Update   : 31/05/2018
#------------------------------------------------------------------


output$about<-renderPrint({
  sessionInfo()
})




