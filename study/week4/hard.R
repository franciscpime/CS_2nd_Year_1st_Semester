library(tidyverse)

students <- data.frame(
    student_id = c(101, 102, 103, 104, 105),
    name = c("Ana", "Bruno", "Carlos", "Diana", "Eduardo"),
    course = c("CS", "Business", "CS", "Design", "Business")
)

grades <- data.frame(
    student_id = c(101, 101, 102, 103, 103, 103, 104, 105, 105),
    subject = c(
        "Programming", "Math",
        "Economics",
        "Programming", "Math", "Databases",
        "Design",
        "Economics", "Math"
    ),
    grade = c(16, 14, 11, 18, 17, 19, 13, 8, 12)
)

merge <- left_join(students, grades, by = "student_id") |>
            group_by(student_id, name, course) |>
            summarize(average_grade = mean(grade), subjects_taken = n()) |>
            ungroup() |>
            select(student_id, name, course, average_grade, subjects_taken) |>
            arrange(desc(average_grade))


results <- c()

for (i in merge$average_grade) {
    if (i >= 10) {
        results <- c(results, "Passed")
    } else {
        results <- c(results, "Failed")
    }  
}
    
merge <- merge |>
                mutate(result = results)

best_course <- merge |>
                group_by(course) |>
                summarize(average = mean(average_grade)) |>
                arrange(desc(average))

print(merge)
print(best_course)