#' Plot Conflict Map
#'
#' Plots a map of conflict incidents using OpenStreetMap and leaflet.
#'
#' @param df A data frame containing conflict incident data with latitude and longitude columns.
#' @return A map visualization of conflict incidents.
#' @examples plot_conflict_map(conflict_locations)
#' @export


plot_conflict_map <- function(df) {
  # Create a leaflet map
  map <- leaflet(data = df) %>%
    addTiles() %>%  # Add default OpenStreetMap map tiles
    addCircleMarkers(~longitude, ~latitude,
                     popup = ~location,
                     radius = 5,
                     color = 'red',
                     fillOpacity = 0.8)

  return(map)
}
# Example usage with internal dataset
if (exists("conflict_locations")) {
  print(plot_conflict_map(conflict_locations))
}
