bus <- read.csv("bus.csv")
rail <- read.csv("rail.csv")
route <- readline("Route: ")

if (route %in% rail$route) {
  # Select all rail records for the requested route
  route_rows <- which(rail$route == route)
  route_data <- rail[route_rows, ]

  # Calculate the on-time reliability for each record
  reliability <- route_data$numerator / route_data$denominator

  # Calculate the average reliability during peak hours
  peak <- which(route_data$peak == "PEAK")
  average_peak <- paste0(
    round(mean(reliability[peak]) * 100, 0),
    "%"
  )

  # Calculate the average reliability during off-peak hours
  off_peak <- which(route_data$peak == "OFF_PEAK")
  average_off_peak <- paste0(
    round(mean(reliability[off_peak]) * 100, 0),
    "%"
  )

  # Display the reliability summary
  print(paste("On time", average_peak, "of the time during peak hours."))
  print(paste("On time", average_off_peak, "of the time during off-peak hours."))

} else if (route %in% bus$route) {
  # Select all bus records for the requested route
  route_rows <- which(bus$route == route)
  route_data <- bus[route_rows, ]

  # Calculate the on-time reliability for each record
  reliability <- route_data$numerator / route_data$denominator

  # Calculate the average reliability during peak hours
  peak <- which(route_data$peak == "PEAK")
  average_peak <- paste0(
    round(mean(reliability[peak]) * 100, 0),
    "%"
  )

  # Calculate the average reliability during off-peak hours
  off_peak <- which(route_data$peak == "OFF_PEAK")
  average_off_peak <- paste0(
    round(mean(reliability[off_peak]) * 100, 0),
    "%"
  )

  # Display the reliability summary
  print(paste("On time", average_peak, "of the time during peak hours."))
  print(paste("On time", average_off_peak, "of the time during off-peak hours."))

} else {
  # Notify the user if the route is absent from both datasets
  print("Input a valid route")
}