choice <- readline("Choose a file: ")
file <- read.csv(choice)

# Extract pit stop durations from the 3rd column
pit_stop_times <- file[, 3]

# Calculate the number of pit stops and their duration statistics.
num_stops <- nrow(file)
shortest <- min(pit_stop_times)
longest <- max(pit_stop_times)
total_time <- sum(pit_stop_times)

print(
  paste(
    "There were", num_stops, "pit stops,",
    "with the shortest being", shortest, "seconds",
    "and the longest being", longest, "seconds.",
    "The total time spent on pit stops was", total_time, "seconds."
  )
)