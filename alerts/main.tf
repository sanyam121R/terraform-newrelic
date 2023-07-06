resource "newrelic_alert_policy" "yan" {
  name                = "example"
  incident_preference = var.incident_preference

}

# Use this resource to create and manage NRQL alert conditions in New Relic.

resource "newrelic_nrql_alert_condition" "foo_with_count" {
  account_id  = var.account_id
  policy_id   = newrelic_alert_policy.yan.id
  description = "Alert when transactions are taking too long"

  count = length(var.count_ac)
  type  = var.count_ac[count.index].type
  name  = var.count_ac[count.index].name

  nrql {
    query = var.count_ac[count.index].nrql
  }

  critical {
    operator              = var.count_ac[count.index].critical.operator
    threshold             = var.count_ac[count.index].critical.threshold
    threshold_duration    = var.count_ac[count.index].critical.threshold_duration
    threshold_occurrences = var.count_ac[count.index].critical.threshold_occurrences
  }

  warning {
    operator              = var.count_ac[count.index].warning.operator
    threshold             = var.count_ac[count.index].warning.threshold
    threshold_duration    = var.count_ac[count.index].warning.threshold_duration
    threshold_occurrences = var.count_ac[count.index].warning.threshold_occurrences
  }
}



resource "newrelic_nrql_alert_condition" "foo_with_forEach" {
  account_id = var.account_id
  policy_id  = newrelic_alert_policy.yan.id

  for_each    = var.for_ac
  name        = each.value.name
  description = "Alert when transactions are taking too long"

  nrql {
    query = each.value.nrql
  }

  critical {
    operator              = each.value.critical.operator
    threshold             = each.value.critical.threshold
    threshold_duration    = each.value.critical.threshold_duration
    threshold_occurrences = each.value.critical.threshold_occurrences
  }

  warning {
    operator              = each.value.warning.operator
    threshold             = each.value.warning.threshold
    threshold_duration    = each.value.warning.threshold_duration
    threshold_occurrences = each.value.warning.threshold_occurrences
  }
}


