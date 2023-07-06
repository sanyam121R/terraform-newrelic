resource "newrelic_synthetics_monitor" "monitor" {

  # USING FOR_EACH

  for_each         = var.config_data
  name             = each.value.name
  status           = each.value.status
  period           = each.value.period
  uri              = each.value.uri
  type             = each.value.type
  locations_public = each.value.locations_public
  verify_ssl       = each.value.verify_ssl
  tag {
    key    = each.value.tag.key
    values = each.value.tag.values
  }
}


/*
  USING COUNT 

  count  = length(var.data)
  name   = var.data[count.index].name
  status = var.data[count.index].status
  period = var.data[count.index].period
  uri    = var.data[count.index].uri
  type   = var.data[count.index].type
  locations_public = var.data[count.index].locations_public

  verify_ssl = var.data[count.index].verify_ssl
  tag {
    key    = var.data[count.index].tag.key
    values = var.data[count.index].tag.values
  }
*/



/*
resource "newrelic_synthetics_monitor" "monitor" {
  for_each = { for monitor, config in local.all_monitors : monitor => config }
  type     = "SIMPLE"
  name     = each.key

  period              = local.common.period
  status              = upper(each.value.status) # valid values are: ENABLED|MUTED|DISABLED
  locations_public    = local.common.locations
  lp = ["AP_SOUTH_1", "US_WEST_1"]
  uri                 = each.value.url
  verify_ssl          = try(each.value.verify_ssl, true)
  bypass_head_request = try(each.value.bypass_head_request, true)

  dynamic "tag" {
    for_each = merge(
      local.default_monitor_tags,
      { "env" : each.value.env },
      { "team" : each.value.team }
    )
    content {
      key    = tag.key
      values = [tag.value]
    }
  }
}
*/
