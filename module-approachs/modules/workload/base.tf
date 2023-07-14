resource "newrelic_workload" "foo" {
  for_each = var.config_data

  name       = each.value.name
  account_id = each.value.account_id

  entity_guids = each.value.entity_guids

  entity_search_query {
    query = each.value.entity_search_query.query
  }

  scope_account_ids = each.value.scope_account_ids
}


resource "newrelic_workflow" "foo" {
  name                  = "workflow-example"
  muting_rules_handling = "NOTIFY_ALL_ISSUES"

  issues_filter {
    name = "filter-name"
    type = "FILTER"

    predicate {
      attribute = "accumulations.tag.team"
      operator  = "EXACTLY_MATCHES"
      values    = ["growth"]
    }
  }

  destination {
    channel_id = newrelic_notification_channel.some_channel.id
  }
}
