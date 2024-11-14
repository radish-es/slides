library(readr)
library(formattable)
library(ggplot2)
library(scales)
library(dplyr)
library(reshape2)



waste <- read_csv("/Users/jamie/NextCloud/research/projects/foodwaste/caflp-conference-nov-2023/2024-divert-waste.csv")

# subjects <- subjects[order(subjects$subject, decreasing = TRUE),]
# subjects$subject <-factor(subjects$subject, levels = as.character(subjects$subject))




# pie chart

licenses %>%
  ggplot(aes(x = "", y = count, fill = License)) +
  geom_col(color = "black") +
  scale_fill_brewer(palette="Blues") +
  coord_polar(theta = "y") +
  labs(
    title = "Licenses by Published OER (Respondent Identified)",
    y = "",
  )




