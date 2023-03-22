main <- function() {
  n1 <- readline(prompt = "Enter a number: ")
  n1 <- as.numeric(n1)
  cat("Double it and give it to the next person:", n1 * 2, "\n")
}

if (require("methods")) {
  main()
}
