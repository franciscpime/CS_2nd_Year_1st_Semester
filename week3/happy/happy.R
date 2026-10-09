country <- readline("Country: ")

# Read each annual dataset and display the country's score
for (year in 2020:2024) {
  annual_data <- read.csv(paste0(year, ".csv"))

  # Find the rows matching the requested country
  country_rows <- which(annual_data$country == country)

  if (length(country_rows) > 0) {
    # Select the country's records
    info <- annual_data[country_rows, ]

    # Sum columns 2 to 8 and round the score to two decimal places
    score <- round(sum(info[2:8]), 2)

    cat(paste(country, paste0("(", year, "):"), score, "\n"))
  } else {
    cat(paste(country, paste0("(", year, "):"), "data unavailable\n"))
  }
}