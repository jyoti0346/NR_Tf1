resource "newrelic_alert_policy" "ResourcePolicy" {
  name = "Jyoti-new-policy"
  incident_preference = "PER_CONDITION" # PER_POLICY is default
}






resource "newrelic_nrql_alert_condition" "Condition" {
  policy_id                      = newrelic_alert_policy.ResourcePolicy.id

  name                           = "New1"

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

  nrql {
   query = "SELECT average(diskUsedPercent) FROM StorageSample WHERE hostname = 'DESKTOP-PNVDQC8' AND device = 'C:'"
  }

  critical {
    operator              = "above"
    threshold             = 90
    threshold_duration    = 1500
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "above"
    threshold             = 80
    threshold_duration    = 600
    threshold_occurrences = "ALL"
  }
}
resource "newrelic_nrql_alert_condition" "Condition2" {
  policy_id                      = newrelic_alert_policy.ResourcePolicy.id

  name                           = "New2"

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

  nrql {
   query = "SELECT max(memoryUsedBytes) FROM SystemSample WHERE hostname = 'DESKTOP-PNVDQC8'"
  }

  critical {
    operator              = "above"
    threshold             = 90
    threshold_duration    = 1500
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "above"
    threshold             = 80
    threshold_duration    = 600
    threshold_occurrences = "ALL"
  }
}