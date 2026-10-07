library(tidyverse)

students <- c("Ana", "Bruno", "Carlos", "Diana")

test1 <- c(14, 8, 18, 11)
test2 <- c(16, 12, 17, 9)
test3 <- c(15, 10, 19, 13)

# Create initial data frame
classification <- data.frame(
    students,
    test1,
    test2,
    test3
)

# Function to calculate all student averages
student_average <- function(grades) {
    return(rowMeans(grades))
}

averages <- student_average(classification[, 2:4])

# Function to classify one average
final_result <- function(average) {
    if (average < 10) {
        return("Failed")
    } else if (average < 14) {
        return("Passed")
    } else if (average < 17) {
        return("Good")
    } else {
        return("Excellent")
    }
}

# Get result for each student
results <- c()

for (average in averages) {
    results <- c(results, final_result(average))
}

# Add calculated columns
classification <- classification |>
    mutate(
        Average = averages,
        Result = results
    ) |>
    rename(
        Student = students,
        Test1 = test1,
        Test2 = test2,
        Test3 = test3
    )

# Best and worst student
best_student <- classification$Student[
    which.max(classification$Average)
]

worst_student <- classification$Student[
    which.min(classification$Average)
]

# Class average
class_average <- mean(classification$Average)

# Good or Excellent students
the_best <- classification |>
    filter(Result == "Good" | Result == "Excellent")

print(classification)
print(paste("Best student:", best_student))
print(paste("Worst student:", worst_student))
print(paste("Class average:", class_average))
print(the_best)