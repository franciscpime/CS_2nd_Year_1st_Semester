grades <- c()

for (i in seq(1:3)) {
    grade <- readline("Grade: ")

    grades <- c(grades, grade)
}

average <- round(mean(as.numeric(grades)), 2)

if (average >= 10) {
    print(average)
    print("Passed")
} else {
    print(average)
    print("Failed")
}