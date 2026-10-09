library(tidyverse)
load("air.RData")

# Calculate total emissions for each pollutant,
# then sort from highest to lowest emissions
air <- air |>
  group_by(pollutant) |>
  summarize(emissions = sum(emissions)) |>
  arrange(desc(emissions))

save(air, file = "6.RData")
print(air)