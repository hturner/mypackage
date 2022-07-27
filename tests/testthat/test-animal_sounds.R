test_that("produces expected strings", {
  giraffe_moo <- animal_sounds("giraffe", "moo")
  expect_equal(giraffe_moo,
               "The giraffe goes moo!")
})

test_that("handles invalid inputs", {
  expect_error(animal_sounds(c("cat", "dog"), c("miaow", "woof")),
               "animal is not a string (a length one character vector)",
               fixed = TRUE)
  expect_error(animal_sounds("cow", factor("moo")),
               "sound is not a string (a length one character vector)",
               fixed = TRUE)
})

test_that("prints message if not assigned", {
  expect_snapshot(animal_sounds("cat", "miaow"))
})

