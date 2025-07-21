#' Calculate total daily nutrient intake from food log
#'
#' This function sums calories, protein, carbs, and fat per day from a food log.
#'
#' @param log A data.frame with columns: date (Date), calories, protein, carbs, fat (numeric).
#' @return A data.frame with total nutrients by date.
#' @export
#' @examples
#' log <- data.frame(
#'   date = as.Date(c("2025-07-01", "2025-07-01")),
#'   calories = c(95, 165),
#'   protein = c(0.5, 31),
#'   carbs = c(25, 0),
#'   fat = c(0.3, 3.6)
#' )
#' calculate_daily_intake(log)
calculate_daily_intake <- function(log) {
  aggregate(cbind(calories, protein, carbs, fat) ~ date, data = log, sum)
}
