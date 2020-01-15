
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rawKS

<!-- badges: start -->

<!-- badges: end -->

The goal of rawKS is to easily extract the raw KS statistics to plot and
report. The Python version [pyks](https://github.com/JiaxiangBU/pyks) is
hosted from GitHub.

## Installation

The development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("JiaxiangBU/rawKS")
```

## Example

``` r
library(tidyverse)
library(rawKS)
data("two_class_example_edited")
max(ks_table(two_class_example_edited$yhat, two_class_example_edited$y)$ks)
ks_table(two_class_example_edited$yhat, two_class_example_edited$y) %>% 
  ks_plot()
```
