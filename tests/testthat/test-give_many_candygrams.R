test_that("give_many_candygrams works", {
  correct_result <- c("Two for Taylor Zimmerman.","Four for Glen Coco.You go, Glen Coco!","One for Cady Heron.","None for Gretchen Weiners.")

  students <- c("Taylor Zimmerman", "Glen Coco", "Cady Heron", "Gretchen Weiners")
  counts <- c(2, 4, 1, 1)

  my_result <- give_many_candygrams(students,counts)

  expect_equal(my_result, correct_result)
})
