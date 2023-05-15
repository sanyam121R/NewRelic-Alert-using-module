application_name = "sanyam_module"
account_id       = 3932056
apdex_t          = 3

query = [
  "SELECT apdex(duration, t: 3) FROM Transaction WHERE appName = 'sanyam_module'",
  "SELECT percentage(count(*), WHERE error IS TRUE) FROM Transaction WHERE appName = 'sanyam_module'",
  "SELECT average(host.memoryUsedPercent) as 'Memory Usage' FROM Metric WHERE entity.guid IN ('MzkzMjA1NnxJTkZSQXxOQXw1NTM1NjI20TY3MTI5NDM2NTQ5') FACET entity.name"
]

name               = "apdex-donno"
critical_threshold = 5
warning_threshold  = 2
threshold_duration = 300
operator           = "above"


# SELECT average(host.memoryUsedPercent) as 'Memory Usage' FROM Metric WHERE entity.guid IN ('MzkzMjA1NnxJTkZSQXxOQXw1NTM1NjI20TY3MTI5NDM2NTQ5') FACET entity.name
