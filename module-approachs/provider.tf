terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "3.25.0"
    }
  }
}

provider "newrelic" {
  # account_id = '<YOUR ACCOUNT ID>'
  # api_key    = <YOUR API KEY>
  region = "US"
}
