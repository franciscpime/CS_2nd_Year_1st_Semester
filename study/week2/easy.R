temperatures <- c(12, 15, 18, 21, 16, 9, 14, 23, 19, 11)

highest <- max(temperatures)
lowest <- min(temperatures)
average <- round(mean(temperatures), 0)

high_temperatures <- c()

for (n in temperatures) {
    if (n >= average) {
        high_temperatures <- c(high_temperatures, n)
        next
    }
}

print(paste("Highest:", highest))
print(paste("Lowest:", lowest))
print(paste("Average:", average))
print(paste("Above average:", high_temperatures))
print(paste("Number above average:", length(high_temperatures)))