test_that("hello returns correct greeting", {
  expect_equal(hello("world"), "Hello, world!")
  expect_equal(hello("R"), "Hello, R!")
})

test_that("hello uses default argument", {
  expect_equal(hello(), "Hello, world!")
})
