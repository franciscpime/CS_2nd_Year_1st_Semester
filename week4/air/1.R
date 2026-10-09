library(tidyverse)

air <- read_csv("air.csv")

# Keep the relevant columns in the desired order
air <- air |> 
         rename(
            state = State,
            county = `State-County`,
            pollutant = POLLUTANT,
            emissions = `Emissions (Tons)`,
            level_1 = `SCC LEVEL 1`,
            level_2 = `SCC LEVEL 2`,
            level_3 = `SCC LEVEL 3`,
            level_4 = `SCC LEVEL 4`
        ) |>
        select(
            state, county, pollutant, emissions,
            level_1, level_2, level_3, level_4
        )

save(air, file = "air.RData")
print("============")
print(air)