# Create a data frame with the specified locations
conflict_locations <- data.frame(
  location = c("Kherson", "Energodar", "Ocheretyne", "Toretsk", "Chasiv Yar",
               "Luhansk", "Donetsk", "Svatove", "Simferopol"),
  latitude = c(46.6354, 47.4987, 48.1975, 48.3995, 48.6039,
               48.574, 48.0159, 49.4103, 44.9482),
  longitude = c(32.6169, 34.6581, 37.6289, 37.8482, 37.8664,
                39.3078, 37.8028, 38.1503, 34.1003),
  stringsAsFactors = FALSE
)


usethis::use_data(conflict_locations, overwrite = TRUE)


# Create a data frame with the specified casualties data
casualty_data <- data.frame(
  date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05',
                   '2023-02-01', '2023-02-02', '2023-02-03', '2023-02-04', '2023-02-05')),
  region = c('Eastern Ukraine', 'Eastern Ukraine', 'Western Ukraine', 'Eastern Ukraine', 'Western Ukraine',
             'Eastern Ukraine', 'Eastern Ukraine', 'Western Ukraine', 'Eastern Ukraine', 'Western Ukraine'),
  casualties = c(10, 20, 5, 15, 10, 12, 18, 6, 14, 8),
  side = c('Russian', 'Ukrainian', 'Russian', 'Ukrainian', 'Russian',
           'Russian', 'Ukrainian', 'Russian', 'Ukrainian', 'Russian'),
  stringsAsFactors = FALSE
)


usethis::use_data(casualty_data, overwrite = TRUE)
