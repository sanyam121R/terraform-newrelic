account_id          = < YOUR ACCOUNT ID >
api_key             = "< YOUR API KEY >"
region              = "US"
incident_preference = "PER_POLICY"

count_ac = [
  {
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
  {
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
]

for_ac = {
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

