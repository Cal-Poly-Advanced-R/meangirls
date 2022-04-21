test_that("add_commentary", {
  correct_result <- "You go, Glen Coco!"

  my_result <- add_commentary("Glen Coco", 4)

  expect_equal(my_result, correct_result)
})



test_that("give_candygrams works", {
  correct_result <- "Two for Taylor Zimmerman."

  my_result <- give_candygrams("Taylor Zimmerman", 2)

  expect_equal(my_result, correct_result)
})
