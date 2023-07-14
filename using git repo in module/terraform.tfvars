

incident_preference = "PER_POLICY"

alert_conditions = {
  "ac1" = {
    name = "apdex alert",
    type = "static",
    critical = {
      operator              = "above"
      threshold             = 5.5
      threshold_duration    = 300
      threshold_occurrences = "ALL"
    },
    warning = {
      operator              = "above"
      threshold             = 3.5
      threshold_duration    = 600
      threshold_occurrences = "ALL"
    },
    nrql = "SELECT average(duration) FROM Transaction"
  },
  "ac2" = {
    name = "error_rate alert",
    type = "static",
    critical = {
      operator              = "above"
      threshold             = 4.5
      threshold_duration    = 600
      threshold_occurrences = "ALL"
    },
    warning = {
      operator              = "above"
      threshold             = 2.5
      threshold_duration    = 300
      threshold_occurrences = "ALL"
    },
    nrql = "SELECT max(duration) FROM Transaction"
  }
}



config_data_synthetics = {
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



dashboards_data = {
  d1 = {
    dashboards_name = "New Relic Terraform Example 1",
    permissions     = "public_read_only"
    pagename        = "Example 1",

    widget_billboard = {
      title      = "Requests per minute"
      row        = 1
      column     = 1
      width      = 6
      height     = 3
      nrql_query = "FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago"
    }

    widget_bar = {
      title      = "Total-PageViews"
      row        = 1
      column     = 7
      width      = 6
      height     = 3
      nrql_query = "SELECT Count(*) FROM PageView"
    }

    widget_line = {
      title      = "Total-PageViews"
      row        = 4
      column     = 7
      width      = 6
      height     = 3
      nrql_query = "FROM Transaction SELECT rate(count(*), 1 minute)"
    }
  },

  d2 = {
    dashboards_name = "New Relic Terraform Example 2",
    permissions     = "public_read_only",
    pagename        = "Example 2",
    dashboards_name = "New Relic Terraform Example 1",
    permissions     = "public_read_only"
    pagename        = "Example 1",

    widget_billboard = {
      title      = "Requests per minute"
      row        = 1
      column     = 1
      width      = 6
      height     = 3
      nrql_query = "FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago"
    }

    widget_bar = {
      title      = "Total-PageViews"
      row        = 4
      column     = 1
      width      = 6
      height     = 3
      nrql_query = "SELECT Count(*) FROM PageView"
    }

    widget_line = {
      title      = "Total-PageViews"
      row        = 4
      column     = 7
      width      = 6
      height     = 3
      nrql_query = "FROM Transaction SELECT rate(count(*), 1 minute)"
    }
  }
}
