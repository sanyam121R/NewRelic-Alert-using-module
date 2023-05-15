terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = 3932056
  api_key    = "NRAK-V34EQYY2IBIJRN5VMI9IKRTDRWU"
  region     = "US"
}
