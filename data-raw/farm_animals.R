## code to prepare `farm_animals` dataset goes here
farm_animals <- data.frame(animal = c("cow", "horse"),
                           sounds = c("moo", "neigh"))

usethis::use_data(farm_animals, overwrite = TRUE)
