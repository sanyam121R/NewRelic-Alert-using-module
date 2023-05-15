module "alert_mod" {
  source = "./alert"

  application_name = var.application_name
  name             = var.name

  for_each = var.query
  query    = each.key

  operator           = var.operator
  critical_threshold = var.critical_threshold
  warning_threshold  = var.warning_threshold
  threshold_duration = var.threshold_duration
}
