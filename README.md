NutriR Functions:

calculate_daily_intake(log)
Calculates total daily nutrient intake from a food log.


Example:
log_example <- data.frame(
  date = as.Date(c("2025-07-01", "2025-07-01")),
  calories = c(95, 165),
  protein = c(0.5, 31),
  carbs = c(25, 0),
  fat = c(0.3, 3.6)
)

daily <- calculate_daily_intake(log_example)
print(daily)


Example:
compare_to_recommended(intake_summary, recommended)
Compares actual daily intake to recommended nutrient amounts and plots the comparison.



recommended <- list(calories = 2000, protein = 50, carbs = 275, fat = 70)
compare_to_recommended(daily, recommended)



For more detailed documentation, please see:

help(package = NutriR)

?NutriR::calculate_daily_intake

?NutriR::compare_to_recommended
