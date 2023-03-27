library(rvest)
library(tidyverse)

url <- "https://www.investing.com/crypto/currencies"

crypto_name <- url %>%
  read_html() %>%
  html_nodes("td.js-currency-symbol") %>%
  html_text2()

price <- url %>%
  read_html() %>%
  html_nodes("td.js-currency-price") %>%
  html_text2()

marketcap <- url %>%
  read_html() %>%
  html_nodes("td.js-market-cap") %>%
  html_text2()

chg24h <- url %>%
  read_html() %>%
  html_nodes("td.js-24h-volume") %>%
  html_text2()

df <- data.frame(crypto_name,price,marketcap,chg24h)
View(df)
