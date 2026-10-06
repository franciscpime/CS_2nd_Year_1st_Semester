check_pass <- function(final_class) {
    pass <- c("A", "B", "C", "D")

    if (final_class %in% pass) {
        return(print("Congrats, you passed!!"))
    } else if (final_class == "F") {
        return(print("Unfortunately, you failed :("))
    } 
}