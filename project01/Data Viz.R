---
title: "Homework Data viz"
author: "Chavinee P"
date: "2023-03-09"
output: html_document


### Explore dataframe diamonds and create 5 visualizations.


```{r massage = FALSE, warning=FALSE}
library(tidyverse)
head(diamonds)


### Chart 1 - relationship between carat and price

```{r warning=FALSE}
set.seed(15)
ggplot(diamonds %>% sample_n(500), aes(carat,price))+
  geom_point(size = 3, col = "#fc8d59", alpha = 0.5)+
  geom_smooth(fill = "#ffdc73", col = "#4361ee")+
  theme_grey()+
  ggtitle("Relationship between carat and price by color")
```

### Chart 2 Quality of Diamond’s cut

```{r} 
set.seed(15)
ggplot(diamonds %>% sample_n(500),aes(carat,price,col=cut)) +
  geom_point(size =4 , alpha =2, position = "jitter")+
  geom_rug()+
  theme_minimal()+
  scale_color_brewer(type ="qual", palette = 7)

### Chart 3  Relationship of clarity and color

```{r}
 ggplot(diamonds,aes(clarity,fill=color)) +
 geom_bar(position = "stack")+
  theme_minimal()+
labs(title = "Relationship of clarity and color")


### Chart 4  Relationship of depth and table and clarity
```{r}
ggplot(diamonds %>% sample_n(5000), aes(clarity, carat)) +
  geom_boxplot(fill="#FF7F50") +
  theme_light()+
  labs(title = "Relationship between clarity and carat")

### Chart 5 Relationship of depth and table and clarity

```{r}

set.seed(15) 
ggplot(diamonds %>% sample_n(5000), aes(depth,table,col=clarity)) +
  geom_boxplot(size = 0.5,alpha = 0.4) +
  theme_light() +
  labs(title = "Relationship between table and depth")+
  scale_color_brewer(type ="div",palette = 7)
