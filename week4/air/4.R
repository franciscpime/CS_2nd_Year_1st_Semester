library(tidyverse)
load("air.RData")

choose_county = readline("Which county: ")

air <- air |>
    filter(county == choose_county) |>
    arrange(desc(emissions))

save(air, file = "4.RData")
print(air)