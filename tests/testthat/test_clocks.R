context("bday clock")

test_that("bday clock input is ok", {

  expect_error(bday_clock("foobrary", 1))

})
