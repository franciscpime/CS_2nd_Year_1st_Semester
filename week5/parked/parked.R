library(tidyverse)

lyrics <- read_file("lyrics/training_season.txt")

clean <- str_remove_all(lyrics, "[[:punct:]]")

lower_case <- str_to_lower(clean)

split <- unlist(str_split(lower_case, "\\s"))

data_frame <- tibble(
    word = split,
    count = str_count(split)
)

plot <- ggplot(data_frame, aes(x = word, y = count)) +
    geom_col() +
    labs(
        x = "Word",
        y = "Count",
        title = "Word Count"
    ) +
    theme(axis.text.x = element_text(angle = 90))

ggsave(
    "lyrics.png",
    plot = plot,
    width = 6000,
    height = 1200,
    units = "px"
)

print(data_frame)