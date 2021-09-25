library(dplyr)
library(ggplot2)

# Create a synthetic data set

Exams <- tibble(
  StudentID       = character(),
  SubjectID       = character(),
  Result          = numeric()
)

students <- paste0("Student_",101:200)
subjects <- paste0("CX_",401:410)
set.seed(100)

for (st in students){
  results <- round(rnorm(n = 10, mean = 60, sd=10),0)
  counter <- 1
  for(sub in subjects){
    Exams <- add_row(Exams,
                     StudentID=st,
                     SubjectID=sub,
                     Result=results[counter])
    counter <- counter + 1
  }
}

ggplot(Exams,aes(x=SubjectID,y=Result))+geom_boxplot()

ggplot(Exams,aes(x=Result,fill=SubjectID))+geom_histogram(binwidth = 5)+facet_wrap(~SubjectID)

# (1) Analyse the subjects and find the average mark, 
#     the highest mark and the lowest mark in each subject

res1 <- Exams %>% group_by(SubjectID) %>%
           summarise(AvrMark=mean(Result),
                     MinMark=min(Result),
                     MaxMark=max(Result))


# (2) Rank the students by the overall average grade

res2 <- Exams %>% group_by(StudentID) %>%
                  summarise(AvrGrade=mean(Result),
                            MinGrade=min(Result),
                            MaxGrade=max(Result))

arrange(res2,desc(AvrGrade))
  

# (3) Add a new field to indicate whether a student got honors (avr >= 60)

res2 <- mutate(res2,Overall=ifelse(AvrGrade>=60,"Honours","Pass"))






