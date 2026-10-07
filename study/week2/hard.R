library(tidyverse)

race1 <- c(52, 48, 55, 51, 49)
race2 <- c(50, 47, 53, 52, 48)
race3 <- c(49, 46, 54, 50, 47)

runners <- c("A", "B", "C", "D", "E")

matrix <- data.frame(
    runners,
    race1,
    race2,
    race3
) |>
    rename(
        Race1 = race1,
        Race2 = race2,
        Race3 = race3
    )

# Average of each runner
averages <- rowMeans(matrix[, 2:4])

# Runner with best average
best_runner <- matrix$runners[which.min(averages)]

# Winner of each race
winners <- c(
    matrix$runners[which.min(matrix$Race1)],
    matrix$runners[which.min(matrix$Race2)],
    matrix$runners[which.min(matrix$Race3)]
)

winners <- data.frame(
    Races = c("Race1", "Race2", "Race3"),
    Winner = winners
)

# Best time overall
best_time <- min(matrix[, 2:4])

# Race where the best time happened
best_race <- names(matrix[, 2:4])[
    which(sapply(matrix[, 2:4], min) == best_time)
]

# Improvement from Race1 to Race3
matrix <- matrix |>
    mutate(Improvement = Race1 - Race3)

# Runners who improved by at least 2 seconds
improved_runners <- matrix |>
    filter(Improvement >= 2)

print(matrix)
print(paste(best_runner, "has the best average time."))
print(winners)
print(paste("The best time was", best_time, "in", best_race))
print(improved_runners)