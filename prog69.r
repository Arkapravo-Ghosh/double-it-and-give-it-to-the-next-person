main <- function() {
  while(TRUE) {
    n1 <- readline(prompt="Enter a number: ")
    if (!is.numeric(n1)) {
      cat("You must enter an integer. Please try again.\n")
    } else {
      break
    }
  }
  cat("Double it and give it to the next person: ", as.numeric(n1) * 2, "\n")
}

main()
