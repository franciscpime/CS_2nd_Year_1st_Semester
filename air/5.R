library(tidyverse)
load("air.RData")

air <- air |>
    group_by(county) |>
    filter(emissions == max(emissions)) 

save(air, file = "5.RData")
print(air)