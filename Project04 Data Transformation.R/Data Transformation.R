library(rvest)
library(tidyverse)
library(stringr)


url<-"https://www.imdb.com/list/ls008939186/"

soundtrack_name <-url%>%
  read_html()%>%
  html_elements("h3.lister-item-header")%>%
  html_text2()


genre<-url%>%
  read_html()%>%
  html_elements("span.genre")%>%
  html_text2()


time<-url%>%
  read_html()%>%
  html_elements("span.runtime")%>%
  html_text2()

rating <- url %>%
  read_html() %>%
  html_elements("div.ipl-rating-star.small")%>%
  html_text2() %>%
  as.numeric()

sound_df <-data.frame(soundtrack_name,genre,time,rating)


sound_df%>%
  mutate(rating_hot = if_else(rating >=8.0, "The greatest soundtrack", "Best soundtrack"))%>%
  arrange(desc(rating)) %>% 
  head(10)



View(df)

