library(stringr)
library(testthat)

validate_password <- function(password) {
    upper <- str_detect(password, "[[:upper:]]")
    number <- str_detect(password, "[[:digit:]]")
    special <- str_detect(password, "[[:punct:]]")
    length <- str_length(password) >= 8
    spaces <- str_detect(password, "[[:space:]]")
    nothing <- str_length(password) == 0

    errors <- c()

    if (upper && number && length && special && !spaces && !nothing) {
        return("Acceptable password 🌟")
    } 
    
    if (!number) {
        errors <- c(errors, "Number missing.")
    } 
    
    if (!special) {
        errors <- c(errors, "Special character missing.")
    } 
    
    if (!upper) {
        errors <- c(errors, "Upper case character missing.")
    } 
    
    if (!length) {
        errors <- c(errors, "Minimum length: 8.")
    }

    if (spaces) {
        errors <- c(errors, "Can't have spaces.")
    }

    if (nothing) {
        return("You must write a password.")
    }

    return(errors)
}

validate_password("Francisco &7")