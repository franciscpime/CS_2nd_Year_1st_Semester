library(tidyverse)
load("air.RData")

choose_county = readline("Which county: ")

air <- filter(
        air,
        county == choose_county
    )

save(air, file = "3.RData")
print(air)