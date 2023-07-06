dashboards_data = [
  {
    dashboards_name    = "New Relic Terraform Example 1",
    permissions        = "public_read_only"
    pagename           = "Example 1",
    widget1_title      = "Requests per minute",
    widget1_nrql       = "FROM Transaction SELECT rate(count(*), 1 minute)",
    widget2_title      = "Total-PageViews"
    widget2_nrql       = "SELECT Count(*) FROM PageView",
    widget_line_title  = "Total-PageViews"
    widget_line_nrql_1 = "FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago",
    widget_line_nrql_2 = "FROM Transaction SELECT rate(count(*), 1 minute)"
  },
  {
    dashboards_name    = "New Relic Terraform Example 2",
    permissions        = "public_read_only",
    pagename           = "Example 2",
    widget1_title      = "Request per minute"
    widget1_nrql       = "FROM Transaction SELECT rate(count(*), 1 minute)",
    widget2_title      = "Total-Pageviews",
    widget2_nrql       = "SELECT Count(*) FROM PageView"
    widget_line_title  = "Total-PageViews"
    widget_line_nrql_1 = "FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago",
    widget_line_nrql_2 = "FROM Transaction SELECT rate(count(*), 1 minute)"
  }
]
