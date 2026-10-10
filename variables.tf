variable "alb_target_groups" {
  description = <<EOT
Map of alb_target_groups, attributes below
Optional:
    - connection_termination
    - deregistration_delay
    - ip_address_type
    - lambda_multi_value_headers_enabled
    - load_balancing_algorithm_type
    - load_balancing_anomaly_mitigation
    - load_balancing_cross_zone_enabled
    - name
    - name_prefix
    - port
    - preserve_client_ip
    - protocol
    - protocol_version
    - proxy_protocol_v2
    - region
    - slow_start
    - tags
    - tags_all
    - target_control_port
    - target_type
    - vpc_id
    - health_check (block):
        - enabled (optional)
        - healthy_threshold (optional)
        - interval (optional)
        - matcher (optional)
        - path (optional)
        - port (optional)
        - protocol (optional)
        - timeout (optional)
        - unhealthy_threshold (optional)
    - stickiness (block):
        - cookie_duration (optional)
        - cookie_name (optional)
        - enabled (optional)
        - type (required)
    - target_failover (block):
        - on_deregistration (required)
        - on_unhealthy (required)
    - target_group_health (block):
        - dns_failover (optional, block):
            - minimum_healthy_targets_count (optional)
            - minimum_healthy_targets_percentage (optional)
        - unhealthy_state_routing (optional, block):
            - minimum_healthy_targets_count (optional)
            - minimum_healthy_targets_percentage (optional)
    - target_health_state (block):
        - enable_unhealthy_connection_termination (required)
        - unhealthy_draining_interval (optional)
EOT

  type = map(object({
    connection_termination             = optional(bool)
    target_control_port                = optional(number)
    tags_all                           = optional(map(string))
    tags                               = optional(map(string))
    slow_start                         = optional(number)
    region                             = optional(string)
    proxy_protocol_v2                  = optional(bool)
    protocol_version                   = optional(string)
    protocol                           = optional(string)
    target_type                        = optional(string)
    preserve_client_ip                 = optional(string)
    name_prefix                        = optional(string)
    name                               = optional(string)
    load_balancing_cross_zone_enabled  = optional(string)
    load_balancing_anomaly_mitigation  = optional(string)
    load_balancing_algorithm_type      = optional(string)
    lambda_multi_value_headers_enabled = optional(bool)
    ip_address_type                    = optional(string)
    deregistration_delay               = optional(string)
    port                               = optional(number)
    vpc_id                             = optional(string)
    health_check = optional(object({
      enabled             = optional(bool)
      healthy_threshold   = optional(number)
      interval            = optional(number)
      matcher             = optional(string)
      path                = optional(string)
      port                = optional(string)
      protocol            = optional(string)
      timeout             = optional(number)
      unhealthy_threshold = optional(number)
    }))
    stickiness = optional(object({
      cookie_duration = optional(number)
      cookie_name     = optional(string)
      enabled         = optional(bool)
      type            = string
    }))
    target_failover = optional(list(object({
      on_deregistration = string
      on_unhealthy      = string
    })))
    target_group_health = optional(object({
      dns_failover = optional(object({
        minimum_healthy_targets_count      = optional(string)
        minimum_healthy_targets_percentage = optional(string)
      }))
      unhealthy_state_routing = optional(object({
        minimum_healthy_targets_count      = optional(number)
        minimum_healthy_targets_percentage = optional(string)
      }))
    }))
    target_health_state = optional(list(object({
      enable_unhealthy_connection_termination = bool
      unhealthy_draining_interval             = optional(number)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.alb_target_groups : (
        v.slow_start == null || ((v.slow_start >= 0 && v.slow_start <= 0) || (v.slow_start >= 30 && v.slow_start <= 900))
      )
    ])
    error_message = "any of: must be between 0 and 0; must be between 30 and 900"
  }
  validation {
    condition = alltrue([
      for k, v in var.alb_target_groups : (
        v.stickiness == null || (v.stickiness.cookie_duration == null || (v.stickiness.cookie_duration >= 0 && v.stickiness.cookie_duration <= 604800))
      )
    ])
    error_message = "must be between 0 and 604800"
  }
  validation {
    condition = alltrue([
      for k, v in var.alb_target_groups : (
        v.target_control_port == null || (v.target_control_port >= 1 && v.target_control_port <= 65535)
      )
    ])
    error_message = "must be between 1 and 65535"
  }
  validation {
    condition = alltrue([
      for k, v in var.alb_target_groups : (
        v.target_health_state == null || alltrue([for item in v.target_health_state : (item.unhealthy_draining_interval == null || (item.unhealthy_draining_interval >= 0 && item.unhealthy_draining_interval <= 360000))])
      )
    ])
    error_message = "must be between 0 and 360000"
  }
  # Note: 34 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

