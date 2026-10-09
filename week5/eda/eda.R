library(tidyverse)

data <- read_csv(
  "gaming_industry_dataset_2020-2025.csv.csv",
  show_col_types = FALSE
)

# Rename key columns and sort by year, rating, and downloads,
# from highest to lowest
data <- data |>
  rename(
    game = `Game Name`,
    rating = `Rating (Score)`,
    downloads = `Downloads (Millions)`,
    year = `Release Year`
  ) |>
  arrange(desc(year), desc(rating), desc(downloads))

# Create a horizontal bar chart of downloads for each game
# Use a separate panel for each year, with panel heights and
# vertical scales adjusted to the games shown
plot <- ggplot(
  data,
  aes(x = downloads, y = game)
) +
  geom_col() +
  facet_grid(year ~ ., scales = "free_y", space = "free_y")

ggsave(
  "visualization.png",
  plot = plot,
  width = 3000,
  height = 2000,
  units = "px"
)