
library(plumber)


function() {
  "<h1>Hello from R with Plumber!</h1>"
}


pr <- plumb("app.R") 
pr$run(host = "0.0.0.0", port = 8787)
