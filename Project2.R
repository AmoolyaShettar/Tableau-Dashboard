install.packages("dplyr")
library(dplyr)
library(ggplot2)

install.packages("tidyr")
library(tidyr)


grad_students <- read.csv('grad-students.csv')
is.null(grad_students)

all_ages <- read.csv('all-ages.csv')
is.null(all_ages)


majors_list <- read.csv('majors-list.csv')
is.null(majors_list)


recent_grads <- read.csv('recent-grads.csv')
is.null(recent_grads)


women_stem <- read.csv('women-stem.csv')
is.null(women_stem)

recent_grads$MeanSalary[recent_grads$Median <= 40000] = "Low"
recent_grads$MeanSalary[recent_grads$Median > 40000 & recent_grads$Median <= 60000] = "Medium"
recent_grads$MeanSalary[recent_grads$Median > 60000] = "High"

write.csv(recent_grads, file = 'recent-grads.csv')


recent_grads$WomenShare[recent_grads$ShareWomen <= 0.35] = "Low"
recent_grads$WomenShare[recent_grads$ShareWomen > 0.35 & recent_grads$ShareWomen <= 0.7] = "Medium"
recent_grads$WomenShare[recent_grads$ShareWomen > 0.7] = "High"

write.csv(recent_grads, file = 'recent-grads.csv')

recent_grads$rate_unemployement[recent_grads$Unemployment_rate < 0.1] = "Low"
recent_grads$rate_unemployement[recent_grads$Unemployment_rate >= 0.1] = "High"

write.csv(recent_grads, file = 'recent-grads.csv')

#================================================================================================================


grad_recent <- read.csv('selected_recent.csv')


grad_recent$MeanSalary[grad_recent$Median <= 40000] = "Low"
grad_recent$MeanSalary[grad_recent$Median > 40000 & grad_recent$Median <= 60000] = "Medium"
grad_recent$MeanSalary[grad_recent$Median > 60000] = "High"

grad_recent$WomenShare[grad_recent$ShareWomen <= 0.35] = "Low"
grad_recent$WomenShare[grad_recent$ShareWomen > 0.35 & grad_recent$ShareWomen <= 0.7] = "Medium"
grad_recent$WomenShare[grad_recent$ShareWomen > 0.7] = "High"

grad_recent$rate_unemployement[grad_recent$Unemployment_rate < 0.1] = "Low"
grad_recent$rate_unemployement[grad_recent$Unemployment_rate >= 0.1] = "High"

write.csv(grad_recent, file = 'selected_recent.csv')






































