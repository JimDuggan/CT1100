library(tidytext)
library(dplyr)

text <- c("Because I could not stop for Death -",
          "He kindly stopped for me -",
          "The Carriage held but just Ourselves -",
          "and Immortality")


text_df <- tibble(line = 1:4, text = text)

text_df_tok <-   unnest_tokens(text_df, word, text)

text_df_tok %>% group_by(word) %>% summarise(Freq=n()) %>% arrange(desc(Freq))

text_df_tok %>% count(word,sort = T) 

