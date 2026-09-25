library(tidyverse)
load("air.RData")

air <- rename(air, source = level_1)

air <- air |>
    select(c(source, pollutant, emissions)) |>
    group_by(source, pollutant) |>
    summarize(emissions = sum(emissions)) |>
    arrange(source, pollutant)

save(air, file = "7.RData")
print(air)
