library(tidyverse)
load("zelda.RData")

# Keep the earliest release for each title, including ties,
# then sort by release year, title, and system
zelda <- zelda |>
    group_by(title) |>
    slice_min(year) |>
    arrange(year, title, system)

save(zelda, file = "3.RData")
print(zelda)