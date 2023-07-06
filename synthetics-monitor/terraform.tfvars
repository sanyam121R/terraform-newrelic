config_data = {
  cd1 = {
    status           = "ENABLED",
    name             = "Simple_monitor",
    period           = "EVERY_MINUTE",
    uri              = "https://www.google.com",
    type             = "SIMPLE",
    locations_public = ["AP_SOUTH_1", "US_WEST_1", "US_EAST_2"],
    verify_ssl       = true
    tag = {
      key    = "Simple Monitor practice 1",
      values = ["some_value"]
    }
  },
  cd2 = {
    status           = "ENABLED",
    name             = "Browser_monitor",
    period           = "EVERY_6_HOURS",
    uri              = "https://www.google.com",
    type             = "BROWSER",
    locations_public = ["AP_SOUTH_1", "US_WEST_1", "US_EAST_2"],
    verify_ssl       = true
    tag = {
      key    = "Simple Monitor practice 2",
      values = ["some_value"]
    }
  }
}
