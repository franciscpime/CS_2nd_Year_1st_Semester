country <- readline("Country: ")
    
year_2020 <- read.csv("2020.csv")
i <- which(year_2020$country == country)
if (country %in% year_2020$country) {
    info <- year_2020[i,]
    score_2020 <- round(sum(info[2:8]), 2)
    cat(paste(country, "(2020):", score_2020, "\n"))
} else {
    cat(paste(country, "(2020): data unavailable\n"))
}

year_2021 <- read.csv("2021.csv")
i <- which(year_2021$country == country)
if (country %in% year_2021$country) {
    info <- year_2021[i,]
    score_2021 <- round(sum(info[2:8]), 2)
    cat(paste(country, "(2021):", score_2021, "\n"))
} else {
    cat(paste(country, "(2021): data unavailable\n"))
}

year_2022 <- read.csv("2022.csv")
i <- which(year_2022$country == country)
if (country %in% year_2022$country) {
    info <- year_2022[i,]
    score_2022 <- round(sum(info[2:8]), 2)
    cat(paste(country, "(2022):", score_2022, "\n"))
} else {
    cat(paste(country, "(2022): data unavailable\n"))
}

year_2023 <- read.csv("2023.csv")
i <- which(year_2023$country == country)
if (country %in% year_2023$country) {
    info <- year_2023[i,]
    score_2023 <- round(sum(info[2:8]), 2)
    cat(paste(country, "(2023):", score_2023, "\n"))
} else {
    cat(paste(country, "(2023): data unavailable\n"))
}

year_2024 <- read.csv("2024.csv")
i <- which(year_2024$country == country)
if (country %in% year_2024$country) {
    info <- year_2024[i,]
    score_2024 <- round(sum(info[2:8]), 2)
    cat(paste(country, "(2024):", score_2024, "\n"))
} else {
    cat(paste(country, "(2024): data unavailable\n"))
}


