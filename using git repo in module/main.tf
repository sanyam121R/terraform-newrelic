module "newrelic_alert" {
  source = "git::https://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@github.com/sanyam121R/terraform-newrelic-modules//alerts"

  alert_conditions    = var.alert_conditions
  incident_preference = var.incident_preference
}

module "newrelic_synthetics" {
  source = "git::https://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@github.com/sanyam121R/terraform-newrelic-modules//synthetics-monitor"

  config_data_synthetics = var.config_data_synthetics
}

module "newrelic_dashboard" {
  source = "git::https://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@github.com/sanyam121R/terraform-newrelic-modules//dashboards"

  dashboards_data = var.dashboards_data
}
