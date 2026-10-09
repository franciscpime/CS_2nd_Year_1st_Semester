library(tidyverse)
load("air.RData")

# Calculate total emissions for each source and pollutant,
# then sort alphabetically by source and pollutant
air <- air |>
    rename(source = level_1) |>
    select(c(source, pollutant, emissions)) |>
    group_by(source, pollutant) |>
    summarize(emissions = sum(emissions)) |>
    arrange(source, pollutant)

save(air, file = "7.RData")
print(air)