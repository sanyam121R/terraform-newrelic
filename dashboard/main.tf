resource "newrelic_one_dashboard" "exampledash" {
  count = length(var.dashboards_data)

  name        = lookup(var.dashboards_data[count.index], "dashboards_name")
  permissions = lookup(var.dashboards_data[count.index], "permissions")

  page {
    name = lookup(var.dashboards_data[count.index], "pagename")

    widget_billboard {
      title  = lookup(var.dashboards_data[count.index], "widget1_title")
      row    = 1
      column = 1
      width  = 6
      height = 3

      nrql_query {
        query = lookup(var.dashboards_data[count.index], "widget1_nrql")
      }
    }

    widget_bar {
      title  = lookup(var.dashboards_data[count.index], "widget2_title")
      row    = 4
      column = 1
      width  = 6
      height = 3

      nrql_query {
        query = lookup(var.dashboards_data[count.index], "widget2_nrql")
      }
    }

    widget_line {
      title  = lookup(var.dashboards_data[count.index], "widget_line_title")
      row    = 4
      column = 7
      width  = 6
      height = 3

      nrql_query {
        query = lookup(var.dashboards_data[count.index], "widget_line_nrql_1")
      }
    }
  }
}
