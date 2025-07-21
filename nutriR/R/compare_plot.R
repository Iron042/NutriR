#' Compare nutrient intake to recommended values and plot
#'
#' Creates a bar plot comparing actual daily intake to recommended nutrient amounts.
#'
#' @param intake_summary A data.frame with columns: date, calories, protein, carbs, fat.
#' @param recommended A named list with recommended daily values for calories, protein, carbs, fat.
#' @return A ggplot2 plot object.
#' @import ggplot2
#' @export
#' @examples
#' intake_summary <- data.frame(
#'   date = as.Date("2025-07-01"),
#'   calories = 260,
#'   protein = 31.5,
#'   carbs = 25,
#'   fat = 3.9
#' )
#' recommended <- list(calories = 2000, protein = 50, carbs = 275, fat = 70)
#' compare_to_recommended(intake_summary, recommended)
compare_to_recommended <- function(intake_summary, recommended) {
  nutrients <- c("calories", "protein", "carbs", "fat")
  
  df <- data.frame(
    nutrient = nutrients,
    intake = as.numeric(intake_summary[1, nutrients]),
    recommended = unlist(recommended)
  )
  
  ggplot(df, aes(x = nutrient)) +
    geom_bar(aes(y = intake), stat = "identity", fill = "skyblue", alpha = 0.7) +
    geom_point(aes(y = recommended), color = "red", size = 4) +
    labs(y = "Amount", title = "Daily Intake (blue) and Recommended (red)") +
    theme_minimal()
}
