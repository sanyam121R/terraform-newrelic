terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "3.25.0"
    }
  }
}

provider "newrelic" {
  account_id = var.account_id
  api_key    = var.api_key
  region     = var.region
}
