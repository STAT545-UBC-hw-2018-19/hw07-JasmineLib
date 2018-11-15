
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Build Status](https://travis-ci.org/vincenzocoia/powers.svg?branch=master)](https://travis-ci.org/vincenzocoia/powers)

**Note**: This R package is not mean to be "serious". It's just for teaching purposes. This file has been adapted from Vincenzo Coia's README file for the Powers Package.

powers
======

This is an R package that gives `sqrt()` friends by providing other power functions.

Installation
------------

You can install powers from github with:

First install the devtools package:

``` r
# install.packages("devtools")
```

Then, clone and download the powers-master documents from my github repository: [link here](https://github.com/STAT545-UBC-students/hw07-JasmineLib/tree/master)

Functions included:
===================

The functions included in the powers package are:
- root()
- square()
- cube()
- reciprocal()

Details on the Root() function:
===============================

-   this is the function made for this hw07 assignment
-   accepted inputs must be of class numeric (ie an integer, numeric vector, etc)
-   arguments are accepted in the form (x,y), where x is the entry you want the root of, and y is the specific root you want to take (see examples below).
-   if y is not specified, it will default to y = 2, to take the square root.

Examples
--------

You can see the vignette for more extensive use, but here's a few examples:

will take the square root of 4:

``` r
powers::root(4,2)
#> [1] 2
```

will also take square root of 4:

``` r
powers::root(4)
#> [1] 2
```

will take the cube root:

``` r
powers::root(27,3)
#> [1] 3
```

will take the square root of a numeric vector:

``` r
powers::root(c(0.01,1,4,9))
#> [1] 0.1 1.0 2.0 3.0
```

logicals will coerce to numeric, and the ^1/5 root will be obtained

``` r
powers::root(c(TRUE, FALSE, TRUE), 5)
#> [1] 1 0 1
```

Another Example Using a Graph:
==============================

``` r
library(ggplot2)
library(powers)
test_dataframe = data.frame("Cubes" = c(1,8,27,64,125,216),"Squares" = c(1,4,9,16,25,36), "Regular" = c(1,2,3,4,5,6))


#Graph without any powers functions:
ggplot(test_dataframe) +
    geom_line() +
    aes(x = Squares, y =Cubes) + 
    ggtitle("Cube Values vs. Square Values") + 
    theme_bw()
```

![](README-graph%20example-1.png)

``` r

#You can also use powers functions to manipulate your data, for example to make a graph
ggplot(test_dataframe) +
    geom_line() +
    #use the root and cube function with piping. default for the root function is square root.
    aes(x = root(Squares), y = cube(Regular)) +  
    ggtitle("Cubes vs. square root of Squares") + 
    theme_bw()
```

![](README-graph%20example-2.png)

For Developers
--------------

Use the internal `pow` function as the machinery for front-end functions such as `square`, `cube`, and `reciprocal`, and `root`.
