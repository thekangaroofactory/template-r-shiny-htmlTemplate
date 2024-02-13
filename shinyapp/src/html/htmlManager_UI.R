

# ------------------------------------------------------------------------------
# MODULE UI FUNCTIONS
# ------------------------------------------------------------------------------

# -- Web page to display
htmlManager_UI <- function(id)
{
  
  # -- namespace
  ns <- NS(id)
  
  # -- the web page
  uiOutput(ns("web_page"))
  
}
