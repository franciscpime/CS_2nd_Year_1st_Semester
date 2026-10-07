calculate_average <- function(grades) {

    subjects <- c("Math", "Literature", "Science", "PE", "English", "Chemistry", "History", "Geography")

    average <- mean(grades)

    student_info <- tibble::tibble(
        Subjects = subjects,
        Grades = grades
    )
    return(average)
}