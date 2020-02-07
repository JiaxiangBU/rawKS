
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rawKS

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/rawKS)](https://CRAN.R-project.org/package=rawKS)
[![Travis build
status](https://travis-ci.org/JiaxiangBU/rawKS.svg?branch=master)](https://travis-ci.org/JiaxiangBU/rawKS)
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
#> Registered S3 methods overwritten by 'ggplot2':
#>   method         from 
#>   [.quosures     rlang
#>   c.quosures     rlang
#>   print.quosures rlang
```

``` r
data("two_class_example_edited")
max(ks_table(two_class_example_edited$yhat, two_class_example_edited$y)$ks)
#> [1] 0.7276892
ks_table(two_class_example_edited$yhat, two_class_example_edited$y) %>% 
  ks_plot()
```

<img src="man/figures/README-example-1.png" width="100%" />
