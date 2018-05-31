#------------------------------------------------------------------
# Program  : serverToken.R
# Objective:  
# Author   : I.Sanchez
# Creation : 29/05/2018
# Update   : 31/05/2018
#------------------------------------------------------------------

observe({
  updateSelectInput(session,"userIn",choices="guestphis@supagro.inra.fr")
  updateSelectInput(session,"pwdIn",choices="guestphis")
    
  #print(input$userIn)
  #print(input$pwdIn)

  if (input$pwdIn == "guestphis") {
    initializeClientConnection(apiID="ws_public")
    print("public")
  } else {
    initializeClientConnection(apiID="ws_private",url =input$serverIn, port =input$portIn)
    print("private")
  }
})

# Retrieve the token with the user inputs!!
aToken <- reactive({ 
  tmp<-getToken(input$userIn,input$pwdIn)
#  tmp<-getToken("guestphis@supagro.inra.fr","guestphis")
  return(tmp)
})

# Retrieve the variables by category

whichCategory <- reactive({ 
  tmpImag<-getVariablesByCategory(aToken()$data,category="imagery",experimentURI = input$experimentURIIn)
  tmpEnv<-getVariablesByCategory(aToken()$data,category="environment",experimentURI = input$experimentURIIn)
  tmpWater<-getVariablesByCategory(aToken()$data,category="watering",experimentURI = input$experimentURIIn)
  tmpWeigh<-getVariablesByCategory(aToken()$data,category="weighing",experimentURI = input$experimentURIIn)
  tmpPheno<-getVariablesByCategory(aToken()$data,category="phenotyping",experimentURI = input$experimentURIIn)
  
  tmpCat<-cbind.data.frame(
          c("imagery","environment","watering","weighing","phenotyping"),
          c(!is.null(tmpImag$data),!is.null(tmpEnv$data),!is.null(tmpWater$data),
            !is.null(tmpWeigh$data),!is.null(tmpPheno$data))
  )
  colnames(tmpCat)<-c("Category","Available")

  return(list(tmpCat,tmpImag,tmpEnv,tmpWater,tmpWeigh,tmpPheno))
})

output$token1<-renderPrint({
  #aToken()$data
  whichCategory()[[1]]
})


#vars <- getVariablesByCategory(aToken()$data,category="environment",experimentURI = input$experimentURIIn)
#"http://www.phenome-fppn.fr/m3p/ARCH2017-03-30"
#"http://www.phenome-fppn.fr/m3p/DIA2017-05-19"
#print(vars$data)

output$token2<-renderDataTable({
  if (is.null(whichCategory()[[2]]$data)){
    mess<-as.data.frame("Category not available for this experiment!")
    colnames(mess)<-"Message"
    print(mess)
  } else {
    print(whichCategory()[[2]]$data)
  }
},options=list(pageLength=10,scrollX = TRUE))

output$token3<-renderDataTable({
  if (is.null(whichCategory()[[3]]$data)){
    mess<-as.data.frame("Category not available for this experiment!")
    colnames(mess)<-"Message"
    print(mess)
  } else {
    print(whichCategory()[[3]]$data)
  }
},options=list(pageLength=10,scrollX = TRUE))

output$token4<-renderDataTable({
  if (is.null(whichCategory()[[4]]$data)){
    mess<-as.data.frame("Category not available for this experiment!")
    colnames(mess)<-"Message"
    print(mess)
  } else {
    print(whichCategory()[[4]]$data)
  }
},options=list(pageLength=10,scrollX = TRUE))

output$token5<-renderDataTable({
  if (is.null(whichCategory()[[5]]$data)){
    mess<-as.data.frame("Category not available for this experiment!")
    colnames(mess)<-"Message"
    print(mess)
  } else {
    print(whichCategory()[[5]]$data)
  }
},options=list(pageLength=10,scrollX = TRUE))

output$token6<-renderDataTable({
  if (is.null(whichCategory()[[6]]$data)){
    mess<-as.data.frame("Category not available for this experiment!")
    colnames(mess)<-"Message"
    print(mess)
  } else {
    print(whichCategory()[[6]]$data)
  }
},options=list(pageLength=5,scrollX = TRUE))



