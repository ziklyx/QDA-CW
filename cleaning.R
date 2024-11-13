library(tidyverse); library(survey)


load(file = '37382-0005-Data.rda')
indv <- da37382.0005
rm(da37382.0005)

#import household long (uses only observation present in both periods)
load(file = '37382-0011-Data.rda')
household <- da37382.0011
rm (da37382.0011)

#eligible women data
load(file = '37382-0017-Data.rda')
ewoman <- da37382.0017
rm (da37382.0017)

#RO6, EW9, 

#create working dataset only using females
indvwd = indv[indv$RO3 == "(2) Female 2",]
  
#WS2Y? for employment

colnames (ewoman)
indv %>%
  summary(WT)
