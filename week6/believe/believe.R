library(stringr)
library(testthat)

# Validate a password and return either a success message or validation errors
validate_password <- function(password) {
  # Check whether the password is empty
  if (str_length(password) == 0) {
    return("You must write a password.")
  }

  # Check each password requirement.
  has_upper <- str_detect(password, "[[:upper:]]")
  has_number <- str_detect(password, "[[:digit:]]")
  has_special <- str_detect(password, "[[:punct:]]")
  has_min_length <- str_length(password) >= 8
  has_spaces <- str_detect(password, "[[:space:]]")

  # Return a success message if all requirements are satisfied
  if (has_upper && has_number && has_special && has_min_length && !has_spaces) {
    return("Acceptable password 🌟")
  }

  # Collect a message for each unmet requirement
  errors <- c()

  if (!has_number) {
    errors <- c(errors, "Number missing.")
  }

  if (!has_special) {
    errors <- c(errors, "Special character missing.")
  }

  if (!has_upper) {
    errors <- c(errors, "Upper case character missing.")
  }

  if (!has_min_length) {
    errors <- c(errors, "Minimum length: 8.")
  }

  if (has_spaces) {
    errors <- c(errors, "Can't have spaces.")
  }

  return(errors)
}

validate_password("Francisco &7")