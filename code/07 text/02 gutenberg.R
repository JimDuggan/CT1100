library(gutenbergr)
library(tidytext)

hgwells <- gutenberg_download(c(35, 36, 5230, 159))
bronte  <- gutenberg_download(c(1260, 768, 969, 9182, 767))


tidy_hgw <-   unnest_tokens(hgwells,word, text) %>% anti_join(stop_words)

count(tidy_hgw, word, sort = T) %>% slice(1:20)

portrait <- gutenberg_download(c(4217),
                            meta_fields = "title")

