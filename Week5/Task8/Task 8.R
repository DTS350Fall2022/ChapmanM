library(downloader)
library(tidyverse)
library(dplyr)
library(ggplot2)
library(RColorBrewer)

"Read in candy data"
candy <- read.csv("https://raw.githubusercontent.com/fivethirtyeight/data/master/candy-power-ranking/candy-data.csv")

"Filter and factor candy data"
candy1 <- filter(candy, winpercent >= 65) %>%
  mutate(competitorname = fct_reorder(competitorname, winpercent))

"Plot 1"
Plot1 <- ggplot(data = candy1, mapping = aes(x= winpercent, y = competitorname)) +
  geom_col(fill = "orange") +
  labs(x = "Win Percentage (%)",
       y = "",
       subtitle = "How often did a fun-sized candy of a given type win its matchupps against the rest of the field?") +
  geom_text(aes(label = round(winpercent, digits = 0)), nudge_x = 4)
Plot1
ggsave("Plot1.png")



"Data with only competitorname and winpercent"
winpercent2 <- candy %>%
  select(competitorname, winpercent)
winpercent2

"Descriptions matched with win percent"
candyLonger <- candy %>%
  select(competitorname:pluribus) %>%
  pivot_longer(!competitorname, names_to = 'description', values_to = 'yesno') %>%
  filter(yesno == 1) %>%
  select(competitorname, description) %>%
  left_join(winpercent2) %>%
  mutate(description = fct_reorder(description,winpercent))
candyLonger

"Plot 2"
ggplot(candyLonger, aes(x = winpercent, y = description, fill = description)) +
  geom_boxplot() +
  labs(x = "Win Percentage",
       y = "",
       subtitle = "The Best Candy Types") +
  scale_fill_brewer(palette="Oranges") +
  theme(legend.position="none")
ggsave("Plot2.png")
