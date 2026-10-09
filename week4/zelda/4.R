library(tidyverse)
load("zelda.RData")

# Find releases whose producers include Shigeru Miyamoto.
# Keep the earliest matching release for each title, including ties,
# then sort by release year, title, and system
zelda <- zelda |>
    filter(str_detect(producers, 'Shigeru Miyamoto')) |>
    group_by(title) |>
    slice_min(year) |>
    arrange(year, title, system)
    
save(zelda, file = "4.RData")
print(zelda)