application_name = "sanyam_module"

query = [
  "SELECT apdex(duration, t: ${var.apdex_t}) FROM Transaction WHERE appName = '${var.application_name}' AND accountId = ${var.account_id}",
  "SELECT percentage(count(*), WHERE error IS TRUE) FROM Transaction WHERE appName = '${var.application_name}' AND accountId = ${var.account_id}"
]

name               = "apdex-donno"
critical_threshold = 5
warning_threshold  = 2
threshold_duration = 300
operator           = "above"
