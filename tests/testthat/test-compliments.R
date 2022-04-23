test_that("really_pretty works", {

  correct_result <- "You're, like, really pretty, Cady."

  my_result <- really_pretty("Cady", follow_up = FALSE)

  expect_equal(my_result, correct_result)
})


test_that("nice_style works", {

  correct_result <- "I love your bracelet!  Where did you get it? So vintage!"

  my_result <- nice_style("bracelet")

  expect_equal(my_result, correct_result)
})


test_that("nice_style works with different adjective", {

  correct_result <- "I love your bracelet!  Where did you get it? So colorful!"

  my_result <- nice_style("bracelet", adjective = "colorful")

  expect_equal(my_result, correct_result)
})

