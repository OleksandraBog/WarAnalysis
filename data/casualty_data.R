#' Casualty Data
#'
#' A dataset containing the casualties data with information about the date, region, number of casualties, and the side (Russian or Ukrainian).
#'
#' @format A data frame with 10 rows and 4 variables:
#' \describe{
#'   \item{date}{A Date vector representing the date of the incident.}
#'   \item{region}{A character vector representing the region where the incident occurred.}
#'   \item{casualties}{A numeric vector representing the number of casualties.}
#'   \item{side}{A character vector indicating the side (either "Russian" or "Ukrainian").}
#' }
#' @examples
#' \dontrun{
#'   print(casualty_data)
#'   result <- analyze_casualties(casualty_data)
#'   print(result$plot)
#' }
"casualty_data"
