## code to prepare `two_class_example` dataset goes here

library(yardstick)
data("two_class_example")
library(tidyverse)
two_class_example_edited <-
    two_class_example %>%
    transmute(
        y = ifelse(truth == "Class1",1,0)
        ,yhat = Class1
    )
two_class_example_edited %>% head
two_class_example_edited %>%
    write_excel_csv("data-raw/two_class_example.csv")

usethis::use_data(two_class_example_edited, overwrite = TRUE)
