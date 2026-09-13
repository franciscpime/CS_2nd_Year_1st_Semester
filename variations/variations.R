random_character <- function() {
  # Return one random letter
  return(sample(letters, 1))
}

print_sequence <- function(length) {
  # Print a random sequence of specified length
  for(i in 1:20) {
    cat(random_character())
    Sys.sleep(0.25)
  }
  cat("\n")
}

print_sequence(20)
