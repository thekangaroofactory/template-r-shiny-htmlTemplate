# template-r-shiny-htmlTemplate

Template for R / Shiny multi page app using a htmlTemplate module

## The main app

-   ui.R only displays the output of the module server
-   server.R only calls the module server

## The module

-   The module UI function displays the web_page output defined in the module server
-   The module server initialize the web_page output with index.html, then observe and input that is updated by a js included in the index.html.
