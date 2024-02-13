

# ------------------------------------------------------------------------------
# Server definition of the Application
# ------------------------------------------------------------------------------

# -- Define server logic
server <- function(input, output, session) {
  
  # -- Declare communication object
  r <- reactiveValues()
  
  # -- Call module
  htmlManager_Server("html", r, PATH_LIST, NULL)
  
}
