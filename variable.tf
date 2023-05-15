variable "application_name" {
  type        = string
  description = "sanyam_module"
}

variable "query" {
  type        = string
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

