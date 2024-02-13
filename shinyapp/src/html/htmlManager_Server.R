

# ------------------------------------------------------------------------------
# MODULE SERVER LOGIC
# ------------------------------------------------------------------------------

htmlManager_Server <- function(id, r, path, file) {
  moduleServer(id, function(input, output, session) {
    
    # -- Get namespace
    ns <- session$ns
    

    # --------------------------------------------------------------------------
    # INIT OUTPUT SECTION
    # --------------------------------------------------------------------------

    # -- Init output:
    # So that the index.html page is displayed when launching the main app
    output$web_page <- renderUI(htmlTemplate("www/index.html"))
    
    
    # --------------------------------------------------------------------------
    # OBSERVER SECTION
    # --------------------------------------------------------------------------
    
    # -- start_app
    # index.html has a startApp() javaScript function that is called onClick.
    # The javaScript sets the start_app input value (using namespace-start_app)
    # By listening to this event, it's possible to update the web_page output and
    # display a different html
    observeEvent(input$start_app, {
      
      cat("[JS_EVENT] JS call to enter website \n")
      
      # -- update output
      output$web_page <- renderUI(
        
        fluidPage(
          
          # -- CSS
          includeCSS("www/css/sidebar.css"),
          includeCSS("www/css/main.css"),
          
          # -- html
          htmlTemplate("www/sidebar.html"),
          htmlTemplate("www/main.html")))
      
    })
    
  })
}
