
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rawKS

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/rawKS)](https://CRAN.R-project.org/package=rawKS)
[![Travis build
status](https://travis-ci.org/JiaxiangBU/rawKS.svg?branch=master)](https://travis-ci.org/JiaxiangBU/rawKS)
[![DOI](https://zenodo.org/badge/194376668.svg)](https://zenodo.org/badge/latestdoi/194376668)
<!-- badges: end -->

The goal of rawKS is to easily extract the raw KS statistics to plot and
report. The Python version [pyks](https://github.com/JiaxiangBU/pyks) is
hosted from GitHub.

## Installation

You can install the released version of rawKS from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("rawKS")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("JiaxiangBU/rawKS")
```

## Example

This is a basic example which shows you how to solve a common problem:

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

## Citations

Jiaxiang Li. (2020, February 8). JiaxiangBU/rawKS: rawKS 0.1.0 (Version
v0.1.0). Zenodo. <http://doi.org/10.5281/zenodo.3659683>

``` bibtex
@software{jiaxiang_li_2020_3659683,
  author       = {Jiaxiang Li},
  title        = {JiaxiangBU/rawKS: rawKS 0.1.0},
  month        = feb,
  year         = 2020,
  publisher    = {Zenodo},
  version      = {v0.1.0},
  doi          = {10.5281/zenodo.3659683},
  url          = {https://doi.org/10.5281/zenodo.3659683}
}
```

If you use rawKS, I would be very grateful if you can add a citation in
your published work. By citing rawKS, beyond acknowledging the work, you
contribute to make it more visible and guarantee its growing and
sustainability. For citation, please use the BibTex or the citation
content.

<h4 align="center">

**Code of Conduct**

</h4>

<h6 align="center">

Please note that the `rawKS` project is released with a [Contributor
Code of
Conduct](https://github.com/JiaxiangBU/rawKS/blob/master/CODE_OF_CONDUCT.md).<br>By
contributing to this project, you agree to abide by its terms.

</h6>

<h4 align="center">

**License**

</h4>

<h6 align="center">

MIT © [Jiaxiang
Li](https://github.com/JiaxiangBU/rawKS/blob/master/LICENSE.md)

</h6>
