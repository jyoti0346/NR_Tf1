
terraform {
  required_version = "~> 1.0"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = 4439967
  api_key = "NRAK-SMO5Y0LVG7ALXG72OZP8EIBCQFF" # Usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}