file_prefix <- c("temp", "ph", "salinity")
file_suffix <- c(1, 2, 3, 4)

for (i in 1:length(file_prefix)) {
  for (j in 1:length(file_suffix)) {
    print(paste0(file_prefix[i], "_", file_suffix[j]))
  }
}

birddog_sum <- function(bird, dog) {
  pets <- bird + dog
  return(pets)
}

x <- birddog_sum(bird = 10, dog = 12)

double_it <- function(x) {
  print(2 * x)
}

double_it(40)
double_it(1:4)

exclaim_age <- function(age) {
  paste("I am", age, "years old!")
}
exclaim_age(28)

find_max <- function(val1, val2) {
  if (val1 > val2) {
    return(val1)
  } else if (val2 > val1) {
    return(val2)
  }
}
find_max(10, 100)
find_max(7, 3)

#print is for the people
#return is to store a value (for the computer)

quarter_splits <- c(1.0, 1.1, 1.2, 1.1, 1.4, 1.5, 1.6, 1.4)
half_splits <- vector(mode = "numeric", length = length(quarter_splits)-1)

for (i in seq_along(half_splits)) {
  half_splits[i] <- quarter_splits[i] + quarter_splits[i+1]
}

half_splits


animal_age <- function(animal, age) {
  if (animal == "dog") {
    print(age * 7)
  } else if (animal == "goal") {
    print(age * 4.7)
  } else
    print("No such animal.")
}

animal_age(animal = "dog", age = 8)
animal_age(animal = "cow", age = 2)


dog_choice <- data.frame(dog_name = c("Khora",
                                      "Teddy",
                                      "Waffle",
                                      "Banjo"),
                         food = c("everything",
                                  "salmon",
                                  "pancakes",
                                  "chicken"))

library(tidyverse)

dog_menu <- function(name) {
  my_sub <- dog_choice %>%
    filter(dog_name == name) #dplyr
  print(paste0("My name is ", my_sub$dog_name, ", and I like to eat ", my_sub$food, "."))
}
dog_menu("Teddy")

#----warning messages----
animal_age <- function(animal, age) {
  
  if (!animal %in% c("dog", "goat")) {
    stop("Oops! Animal must be a dog or a goat.")
  }
  
  if(is.numeric(age) == FALSE) {
    stop("The age must be a number.")
  }
  
  if(age <= 0) {
    stop("The age must be greater than 0.")
  }
  
  if (animal == "dog") {
    print(age * 7)
  } else if (animal == "goal") {
    print(age * 4.7)
  } 
}

animal_age("dog", -2)


#----practice----

calc_windpower <- function(rho, radius, windspeed) {
  
  if (windspeed > 130) {
    warning("Wow, that's fast! Are you sure?")
  }
  
  if (rho > 1.225) {
    warning("That air density is suspicious. Are you sure?")
  }
  
  if (radius <0) {
    stop("Rotor radius must be a positive value (meters).")
  }
  
  print(0.3*rho*pi*(radius^2)*(windspeed^3))
}

calc_windpower(0.5, 5, 100)






