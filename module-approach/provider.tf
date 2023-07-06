terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "3.25.0"
    }
  }
}

provider "newrelic" {
  account_id = 3995235
  api_key    = "NRAK-QU1Z411VQBL6KY99XXAQ7WH62U0"
  region     = "US"
}
