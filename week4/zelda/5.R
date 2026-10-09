library(tidyverse)
load("zelda.RData")

# Find releases with multiple producers listed, separated by a comma and space
# Keep the earliest matching release for each title, including ties,
# then sort by release year, title, and system
zelda <- zelda |>
filter(str_detect(producers, ', '))|>
    group_by(title) |>
    slice_min(year) |>
    arrange(year, title, system)

save(zelda, file = "5.RData")
print(zelda)