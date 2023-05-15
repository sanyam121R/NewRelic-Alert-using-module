resource "newrelic_alert_policy" "san_alert_p" {
  name = var.application_name
}

resource "newrelic_nrql_alert_condition" "my_conditions" {
  name        = var.name
  policy_id   = newrelic_alert_policy.san_alert_p.id
  type        = "static"
  description = "Alert when transactions are taking too long"

  nrql {
    query = var.query
  }

  critical {
    operator              = var.operator
    threshold             = var.critical_threshold
    threshold_duration    = var.threshold_duration
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = var.operator
    threshold             = var.warning_threshold
    threshold_duration    = var.threshold_duration
    threshold_occurrences = "ALL"
  }
}
