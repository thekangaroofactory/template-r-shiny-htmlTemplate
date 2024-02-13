

// add onClick listener to enter app
document.body.addEventListener('click', startApp, true); 

// the function
function startApp() {
  
  // remove the listener
  document.body.removeEventListener('click', startApp, true)
  
  // notify shiny
  Shiny.setInputValue("html-start_app", true, {priority: "event"});
  
}


