
# ------------------------------------------------------------------------------
# Dependencies
# ------------------------------------------------------------------------------

# -- Attach libraries
cat("[GLOBAL] Loading package dependencies... \n")
library(shiny)


# ------------------------------------------------------------------------------
# Config paramaters
# ------------------------------------------------------------------------------

# -- PATH
PATH_LIST <- list("script" = "src",
                  "html" = "www",
                  "css" = "www/css",
                  "image" = "www/img",
                  "javascript" = "www/js")


# ------------------------------------------------------------------------------
# Source code
# ------------------------------------------------------------------------------

# -- Source app code
cat("[GLOBAL] Source application code: \n")
for (nm in list.files(PATH_LIST$script, full.names = TRUE, recursive = TRUE, include.dirs = FALSE))
{
  cat("  - Loading code from:", nm, "\n")
  source(nm)
}
rm(nm)
