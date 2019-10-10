# see https://tidyr.tidyverse.org/dev/articles/pivot.html


d <- read_excel("datasets/synthetic/ExamDataBroad.xlsx")

pl <- d %>% pivot_longer(-StudentID,names_to = "Subject",values_to = "Result")

pw <- pl %>% pivot_wider(names_from = Subject,values_from = Result)
