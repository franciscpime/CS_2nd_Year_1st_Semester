choice <- readline("Choose a file: ")

file <- read.csv(choice)

num_laps <- nrow(file)
shortest <- min(file[, 3])
longest <- max(file[, 3])
total_time <- sum(file[, 3])

print(
    paste("There were", num_laps, "pit stops,", 
            "with the shortest being", shortest, "seconds", 
            "and the longest being", longest,  "seconds.", 
            "The total time spent on pit stops was", total_time, "seconds."
    )
)
