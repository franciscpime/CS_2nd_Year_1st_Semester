bus <- read.csv("bus.csv")
rail <- read.csv("rail.csv")

route <- readline("Route: ")

numerator <- rail$numerator

if (route %in% rail$route) {
    # Rail
    color <- which(rail$route == route)
    color_numerator <- rail$numerator[color]
    color_denominator <- rail$denominator[color]
    reliability <- color_numerator / color_denominator
    peak <- which(rail$peak[color] == "PEAK")
    average_peak <- paste0(round(mean(reliability[peak]) * 100, 0), "%")
    off_peak <- which(rail$peak[color] == "OFF_PEAK")
    average_off_peak <- paste0(round(mean(reliability[off_peak]) * 100, 0), "%")

    print(paste("On time", average_peak ,"of the time during peak hours."))
    print(paste("On time", average_off_peak ,"of the time during off-peak hours."))
} else if (route %in% bus$route) {
    # Bus
    number <- which(bus$route == route)
    bus_numerator <- bus$numerator[number]
    bus_denominator <- bus$denominator[number]
    reliability <- bus_numerator / bus_denominator
    peak <- which(bus$peak[number] == "PEAK")
    average_peak <- paste0(round(mean(reliability[peak]) * 100, 0), "%")
    off_peak <- which(bus$peak[number] == "OFF_PEAK")
    average_off_peak <- paste0(round(mean(reliability[off_peak]) * 100, 0), "%")

    print(paste("On time", average_peak ,"of the time during peak hours."))
    print(paste("On time", average_off_peak ,"of the time during off-peak hours."))
} else {
    print("Input a valid route")
}

