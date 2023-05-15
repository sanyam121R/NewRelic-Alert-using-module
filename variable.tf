variable "account_id" {
  type = number
}

variable "application_name" {
  type        = string
  description = "sanyam_module"
}

variable "query" {
  type        = set(any)
  description = "nrql query"
}

variable "name" {
  type        = string
  description = "Naem of the alert condition - Long apdex"
}

variable "operator" {
  type = string
}

variable "critical_threshold" {
  type = number
}

variable "warning_threshold" {
  type = number
}

variable "threshold_duration" {
  type = number
}

variable "apdex_t" {
  type = number
}
