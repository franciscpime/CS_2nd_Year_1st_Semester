calculate_growth_rate <- function(years, visitors) {
  # Calculate yearly growth of visitors
  years <- years[13] - years[1]
  visitors <- visitors[13] - visitors[1]
  return(visitors/years)
}

predict_visitors <- function(years, visitors, year) {
  # Predict visitors in given year
  prediction <- visitors[13] + (calculate_growth_rate(years, visitors) * (year - years[13]))
  return(prediction)
}

visitors <- read.csv("visitors.csv")
year <- as.integer(readline("Year: "))
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))
