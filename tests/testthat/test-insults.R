test_that("fetch works", {

  correct_result <- "Gretchen, stop trying to make fetch happen!  It's not going to happen!"

  my_result <- fetch("Gretchen", "fetch")

  expect_equal(my_result, correct_result)
})
