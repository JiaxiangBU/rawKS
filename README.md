
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
library(rawKS)
df <- ks_table(yhat, y)
max(df$ks) # KS
library(tidyverse)
df %>% 
    select(cutoff, tpr, fpr, ks) %>% 
    gather(key, value, -cutoff) %>% 
    ggplot(aes(x = cutoff, y = value, col = key)) +
    geom_lines()
# KS plot like ROC plot.
```
