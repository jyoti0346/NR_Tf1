variable "alert_conditions" {
      type       = list(object({
      condition_name                 = string
      description                    = string
      runbook_url                    = string
      enabled                        = bool
      violation_time_limit_seconds   = number
      fill_option                    = string
      fill_value                     = number
      aggregation_window             = number
      aggregation_method             = string
      aggregation_delay              = number
      expiration_duration            = number
      open_violation_on_expiration   = bool
      close_violations_on_expiration = bool
      slide_by                       = number
      nrql_query                     = string
      critical_operator              = string
      critical_threshold             = number
      critical_threshold_duration    = number
      critical_threshold_occurrences = string
      warning_operator               = string
      warning_threshold              = number
      warning_threshold_duration     = number
      warning_threshold_occurrences  = string
    }))

}

variable "account_id" {
  type = number
}

variable "api_key" {
  type = string
}

