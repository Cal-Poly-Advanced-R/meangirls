test_that("give_many_candygrams gives a vector of candygrams and commentary", {
  correct_result <- c("Two for Taylor Zimmerman. Merry Christmas", "Four for Glen Coco. You go, Glen Coco!", "None for Gretchen Weiners.")

  students <- c("Taylor Zimmerman", "Glen Coco", "Gretchen Weiners")
  numbers <- c(2, 4, 6)
  message <- c("Merry Christmas", "NULL", "NULL")
  my_result <- give_many_candygrams(students, numbers, message)

  expect_equal(my_result, correct_result)
})



test_that("give_candygrams works", {
  correct_result <- c("Twenty for Andrew Frauenpreis. You really know how to code!", "Five for Kalyn Armstrong. You go, Kalyn Armstrong!")

  students <- c("Andrew Frauenpreis", "Kalyn Armstrong")
  numbers <- c(20, 5)
  message <- c("You really know how to code!", "NULL")
  my_result <- give_many_candygrams(students, numbers, message)

  expect_equal(my_result, correct_result)
})
