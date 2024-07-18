#' Analyze Casualties
#'
#' Analyzes casualty data, providing summary statistics and trends, and creates a line plot of casualties over time.
#'
#' @param df A data frame containing casualty data with columns for date, casualties, and side (either "Russian" or "Ukrainian").
#' @param region An optional string specifying a region for analysis (default is NULL for overall analysis).
#' @return A list containing the total casualties, monthly trends, and a line plot of casualties over time.
#' @examples result <- analyze_casualties(casualty_data)
#'   print(result$plot)
#'
#' @import ggplot2
#' @import knitr
#'
#' @export




analyze_casualties <- function(df, region = NULL) {
  if (!is.null(region)) {
    df <- df[df$region == region, ]
  }

  # Aggregate total casualties by side
  total_casualties <- aggregate(casualties ~ side, data = df, sum)
  total_casualties_kable <- knitr::kable(total_casualties, caption = "Total Casualties by Side")

  # Aggregate monthly trends by side
  df$month <- format(df$date, "%Y-%m")
  monthly_trends <- aggregate(casualties ~ month + side, data = df, sum)
  monthly_trends_kable <- knitr::kable(monthly_trends, caption = "Monthly Trends of Casualties by Side")

  # Create a line plot of casualties over time by side
  plot <- ggplot(monthly_trends, aes(x = as.Date(paste0(month, "-01")), y = casualties, color = side, group = side)) +
    geom_line() +
    theme_minimal() +
    labs(
      title = "Casualties Over Time",
      x = "Month",
      y = "Number of Casualties",
      color = "Side"
    ) +
    scale_x_date(date_labels = "%b %Y", date_breaks = "1 month") +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))

  return(list(
    total_casualties_table = total_casualties_kable,
    monthly_trends_table = monthly_trends_kable,
    plot = plot
  ))
}

# Example usage with internal dataset
if (exists("casualty_data")) {
  result <- analyze_casualties(casualty_data)
  print(result$plot)
}
