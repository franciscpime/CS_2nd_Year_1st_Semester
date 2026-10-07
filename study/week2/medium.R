library(tidyverse)

students <- c("Ana", "Bruno", "Carlos", "Diana", "Eduardo")
grades <- c(14, 8, 17, 11, 6)
result <- c()

for (n in grades) {
    if (n >= 10) {
        result <- c(result, "Passed")
    } else {
        result <- c(result, "Failed")
    }
}

merge <- data.frame(
    students,
    grades, 
    result
) |> 
filter(result == "Passed") |>
arrange(desc(grades))

print(merge)
print(mean(merge$grades))