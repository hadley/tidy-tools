test_that("data frame method is symmetric", {
  expect_equal(bizarro(bizarro(mtcars)), mtcars)
})
