library(tidyverse)

f1 <- data.frame(
    driver = c("Verstappen", "Norris", "Leclerc", "Hamilton",
               "Russell", "Piastri", "Sainz", "Alonso",
               "Perez", "Gasly", "Ocon", "Tsunoda"),
    team = c("Red Bull", "McLaren", "Ferrari", "Mercedes",
             "Mercedes", "McLaren", "Ferrari", "Aston Martin",
             "Red Bull", "Alpine", "Alpine", "RB"),
    grid = c(1, 3, 2, 7, 5, 4, 6, 9, 8, 11, 12, 10),
    position = c(1, 2, 4, 6, 5, 3, 7, 9, 8, 10, 12, 11)
)

f1_graphic <- ggplot(
                f1,
                aes(x = grid, y = position, color = team)
            ) +
            scale_x_continuous(breaks = seq(1, 12, by = 1)) +
            scale_y_continuous(breaks = seq(1, 12, by = 1)) +
            geom_point() +
            geom_abline(slope = 1, intercept = 0) +
            labs(
                x = "Grid",
                y = 'Positions',
                title = "Grid vs Position"
            ) +
            theme_minimal()

ggsave(
    "../week5/f1_graphic.png",
    f1_graphic
)

f1 <- f1 |>
        mutate(positions_gained = grid - position)

positions_gained_graphic <- ggplot(
                                f1,
                                aes(
                                    x = driver, 
                                    y = positions_gained, 
                                    fill = ifelse(
                                        positions_gained > 0, 
                                        "blue", 
                                        ifelse(
                                            positions_gained < 0,
                                            "red", "green"
                                        )
                                    )
                                )
                            ) +
                            geom_col() +
                            scale_fill_identity() +
                            labs(
                                x = "Drivers",
                                y = "Positions Gained",
                                title = "Positions Gained for each Driver"
                            ) +
                            theme_minimal()

ggsave(
    "../week5/positions_gained_graphic.png",
    positions_gained_graphic
)

print(f1)