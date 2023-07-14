
variable "incident_preference" {
  description = "incident_preference for alert conditions"
}

variable "alert_conditions" {
  type = map(any)
}

variable "config_data_synthetics" {
  type = map(any)
}

variable "dashboards_data" {
  type = map(any)
}

