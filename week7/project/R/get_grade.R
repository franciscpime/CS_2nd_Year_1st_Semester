get_grade <- function(average) {
    
    final_grade <- c("A", "B", "C", "D", "F")
    labels <- c("90-100","80-89","70-79","60-69","0-59")

    # Create a reference table for the grading scale
    classification <- tibble::tibble(
        Final_Grade = final_grade,  
        Labels = labels
    )
    
    # Assign the grade using the first matching threshold
    final_class <- dplyr::case_when(
        average >= 90 ~ "A",
        average >= 80 ~ "B",
        average >= 70 ~ "C",
        average >= 60 ~ "D",
        average >= 0 ~ "F"
    )
    return(final_class)
}