main <- function() {
  while (TRUE) {
    n1 <- readline(prompt="Enter a number: ")
    if (is.numeric(n1)) {
      break
    } else {
      cat("You must enter an integer. Please try again.\n")
    }
  }
  cat("Double it and give it to the next person: ", n1 * 2, "\n")
}

main()