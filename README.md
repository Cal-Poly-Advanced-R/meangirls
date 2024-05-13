
<!-- README.md is generated from README.Rmd. Please edit that file -->

# meangirls

<!-- badges: start -->
<!-- badges: end -->

The goal of meangirls is to create quotes in the style of the 2004
instant classic movie, *Mean Girls*.

## Installation

You can install the the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Cal-Poly-Advanced-R/meangirls")
```

``` r
library(meangirls)
```

## insults

You can use the function `boo()` to deliver a generic insult:

``` r
boo("jerk")
#> Boo, you jerk
```

You can use the function `fetch()` to insult someone’s made-up slang
word.

``` r
fetch("Gretchen", "fetch")
#> Gretchen, stop trying to make fetch happen!  It's not going to happen!
```

## compliments

You can use the function `nice_style()` to compliment someone’s fashion
choices.  
The default adjective is “vintage”, but you can supply your own.

``` r
nice_style("bracelet")
#> I love your bracelet!  Where did you get it? So vintage!

nice_style("bracelet", adjective = "colorful")
#> I love your bracelet!  Where did you get it? So colorful!
```

You can use the function `really_pretty()` to tell someone they are
pretty.

``` r
really_pretty("Cady", follow_up = FALSE)
#> You're, like, really pretty, Cady.
```

### Negating compliments

Both compliments can be negated with a follow-up phrase:

``` r
really_pretty("Cady", follow_up = TRUE)
#> [1] "You're, like, really pretty, Cady. So you agree?  You think you're really pretty?"
nice_style("bracelet", follow_up = TRUE)
#> I love your bracelet!  Where did you get it? So vintage!
#> That's the ugliest effing bracelet I've ever seen.
```

## Handing out candygrams

Finally, you can use the `give_candygrams()` function to announce the
number of candygrams a person gets.

``` r
give_candygrams("Taylor Zimmerman", 2)
#> Two for Taylor Zimmerman.
```

### Extra comments

You can also give extra commentary to your announcement:

``` r
give_candygrams("Taylor Zimmerman", 2, 
                extra_message = "Merry Christmas!")
#> Two for Taylor Zimmerman. Merry Christmas!
```

Some special cases trigger automatic extra commentary or special
behavior:

``` r
give_candygrams("Glen Coco", 4)
#> Four for Glen Coco. You go, Glen Coco!
```

``` r
give_candygrams("Gretchen Weiners", 4)
#> None for Gretchen Weiners.
```
