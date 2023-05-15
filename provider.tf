terraform {

  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}

provider "newrelic" {
  account_id = var.account_id
  api_key    = "NRAK-V34EQYY2IBIJRN5VMI9IKRTDRWU"
  region     = "US"
}
