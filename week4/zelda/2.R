library(tidyverse)
load("zelda.RData")

# Count releases for each year, then sort from most to fewest releases
zelda <- zelda |>
    group_by(year) |>
    summarize(releases = n()) |>
    arrange(desc(releases))

save(zelda, file = "2.RData")
print(zelda)