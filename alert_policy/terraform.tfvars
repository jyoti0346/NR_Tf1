
  alert_conditions=[ {

    name                           = "Policy 2"
    incident_preference            = "PER_CONDITION"
    condition_name                 = "Memory Usage High"
    description                    = "Alert when the memory usage is high"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    nrql_query                     = "SELECT average(duration) FROM Transaction where appName = 'FoodMe-mine'"
    critical_operator              = "above"
    critical_threshold             = 80
    critical_threshold_duration    = 300
    critical_threshold_occurrences = "ALL"
    warning_operator               = "above"
    warning_threshold              = 60
    warning_threshold_duration     = 600
    warning_threshold_occurrences  = "ALL"
  },
  {
      name                           = "Policy 2"
    incident_preference            = "PER_CONDITION"
    condition_name                 = "Memory Usage High"
    description                    = "Alert when the memory usage is high"
    runbook_url                    = "https://www.example.com"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 1.0
    aggregation_window             = 60
    aggregation_method             = "event_flow"
    aggregation_delay              = 120
    expiration_duration            = 120
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 30
    nrql_query                     = "SELECT average(duration) FROM Transaction where appName = 'FoodMe-mine'"
    critical_operator              = "above"
    critical_threshold             = 80
    critical_threshold_duration    = 300
    critical_threshold_occurrences = "ALL"
    warning_operator               = "above"
    warning_threshold              = 60
    warning_threshold_duration     = 600
    warning_threshold_occurrences  = "ALL"
  }
]



account_id = var.account_id
api_key    = var.api_key
