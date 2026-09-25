library(tidyverse)

data <- read_csv(
    "gaming_industry_dataset_2020-2025.csv.csv",
    show_col_types = FALSE
)

data <- data |>
    rename(game = 'Game Name', rating = 'Rating (Score)', downloads = 'Downloads (Millions)', year = 'Release Year') |>
    arrange(desc(year), desc(rating), desc(downloads))

plot <- ggplot(
        data,
        aes(x = downloads, y = game)
    ) +
    geom_col() +
    facet_grid(year ~ ., scales = "free_y", space = "free_y")

ggsave(
    "visualization.png",
    plot = plot,
    width = 1200,
    height = 900,
    units = "px"
)
