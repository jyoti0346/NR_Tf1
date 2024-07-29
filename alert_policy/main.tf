resource "newrelic_alert_policy" "AP" {
  

  name                = "AlertPolicy"
  incident_preference = "PER_CONDITION"
}

resource "newrelic_nrql_alert_condition" "AC" {
  count = length(var.alert_conditions)

  account_id                     = var.account_id
  policy_id                      = newrelic_alert_policy.AP.id
  type                           = "static"
  name                           = var.alert_conditions[count.index].condition_name
  description                    = var.alert_conditions[count.index].description
  runbook_url                    = var.alert_conditions[count.index].runbook_url
  enabled                        = var.alert_conditions[count.index].enabled
  violation_time_limit_seconds   = var.alert_conditions[count.index].violation_time_limit_seconds
  fill_option                    = var.alert_conditions[count.index].fill_option
  fill_value                     = var.alert_conditions[count.index].fill_value
  aggregation_window             = var.alert_conditions[count.index].aggregation_window
  aggregation_method             = var.alert_conditions[count.index].aggregation_method
  aggregation_delay              = var.alert_conditions[count.index].aggregation_delay
  expiration_duration            = var.alert_conditions[count.index].expiration_duration
  open_violation_on_expiration   = var.alert_conditions[count.index].open_violation_on_expiration
  close_violations_on_expiration = var.alert_conditions[count.index].close_violations_on_expiration
  slide_by                       = var.alert_conditions[count.index].slide_by

  nrql {
    query = var.alert_conditions[count.index].nrql_query
  }

  critical {
    operator              = var.alert_conditions[count.index].critical_operator
    threshold             = var.alert_conditions[count.index].critical_threshold
    threshold_duration    = var.alert_conditions[count.index].critical_threshold_duration
    threshold_occurrences = var.alert_conditions[count.index].critical_threshold_occurrences
  }

  warning {
    operator              = var.alert_conditions[count.index].warning_operator
    threshold             = var.alert_conditions[count.index].warning_threshold
    threshold_duration    = var.alert_conditions[count.index].warning_threshold_duration
    threshold_occurrences = var.alert_conditions[count.index].warning_threshold_occurrences
  }
}