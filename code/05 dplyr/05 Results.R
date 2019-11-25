library(dplyr)

id_col <- c("111111","222222","333333","444444","555555",
            "111111","222222","333333","444444","555555")
subj_col <- c("CX0001","CX0001","CX0001","CX0001","CX0001",
              "CX0002","CX0002","CX0002","CX0002","CX0002")
grades  <- c(55, 78, 65, 85, 45, 65, 68, 75, 95, 55)
results <- tibble(StudentID=id_col,
                  SubjectCode=subj_col,
                  Grade=grades)

ans1 <- filter(results,StudentID=='111111') %>% pull(Grade) %>% mean()

ans2 <- filter(results,SubjectCode=='CX0001') %>% pull(Grade) %>% mean()

