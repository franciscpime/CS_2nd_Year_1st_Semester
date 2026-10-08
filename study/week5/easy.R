library(tidyverse)

students <- data.frame(
    name = c("Ana", "Bruno", "Carlos", "Diana", "Eduardo"),
    grade = c(16, 12, 18, 14, 10)
)

students_grades <- ggplot( 
                    students,
                    aes(x = name, y = grade, fill = grade)
                ) +
                geom_col() +
                labs(
                    x = "Names",
                    y = "Grades",
                    title = "Students Grades"
                )

ggsave(
    "../week5/students_grades.png",
    students_grades
)