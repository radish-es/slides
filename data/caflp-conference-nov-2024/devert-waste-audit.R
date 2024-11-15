library(readr)
library(formattable)
library(ggplot2)
library(scales)
library(dplyr)
library(reshape2)

waste <- read_csv("/Users/jamie/NextCloud/teaching/slides/data/caflp-conference-nov-2023/2024-divert-waste.csv")

# waste <- waste[order(waste$percent, decreasing = TRUE),]
# waste$percent <-factor(waste$percent, levels = as.character(waste$percent))

# pie chart

waste %>%
  ggplot(aes(x = "", y = percent, fill = type)) +
  geom_col(color = "black") +
  geom_label(aes(label = percent), position = position_stack(vjust = 0.5), show.legend = FALSE) +
  scale_fill_manual(values = c("#99b3e6", "#94b8b8",
                               "#669999", "#ebf0fa","#d6e0f5",
                               "#c2d1f0", "#adc2eb")) +
  coord_polar(theta = "y") +
  labs(
    title = "",
    y = "",
   ) +
  theme_void()

# scale_fill_brewer(palette="Blues") +

