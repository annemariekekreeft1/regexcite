library(devtools)
library(usethis)
use_git()



#Write the first function
(x <- "alfa,bravo,charlie,delta")
strsplit(x, split = ",")
str(strsplit(x, split = ","))
## Unlisting the results:
unlist(strsplit(x, split = ","))
strsplit(x, split = ",")[[1]]

# Making a function of these actions
strsplit1 <- function(x, split) {
  strsplit(x, split = split)[[1]]
}


use_mit_license()
#First, we document the definition of the function.
#Paste the function into this script.
use_r("strsplit1")

#To be able to use the function, we use load_all()
load_all()
strsplit1(x, split = ",")
##[1] "alfa"    "bravo"   "charlie" "delta"

exists("strsplit1", where = globalenv(), inherits = FALSE)
[1] FALSE

# Check if all moving parts of the regexcite package still work
check()
devtools::check()

#

#
?strsplit1


export(strsplit1)


install()


library(regexcite)

x <- "alfa,bravo,charlie,delta"
strsplit1(x, split = ",")
#[1] "alfa"    "bravo"   "charlie" "delta"

install.packages("testthat")
use_testthat()
usethis::use_test()
use_test("strsplit1")

load_all()
test_that("strsplit1() splits a string", {
  expect_equal(strsplit1("a,b,c", split = ","), c("a", "b", "c"))
})

test()


#1.16

use_package("stringr")

rename_files("strsplit1", "str_split_one")

test_that("str_split_one() splits a string", {
  expect_equal(str_split_one("a,b,c", ","), c("a", "b", "c"))
})

test_that("str_split_one() errors if input length > 1", {
  expect_error(str_split_one(c("a,b","c,d"), ","))
})

test_that("str_split_one() exposes features of stringr::str_split()", {
  expect_equal(str_split_one("a,b,c", ",", n = 2), c("a", "b,c"))
  expect_equal(str_split_one("a.b", stringr::fixed(".")), c("a", "b"))
})


use_github()
use_readme_rmd()
build_readme()
