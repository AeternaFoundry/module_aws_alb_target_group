output "alb_target_groups_id" {
  description = "Map of id values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "alb_target_groups_arn" {
  description = "Map of arn values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "alb_target_groups_arn_suffix" {
  description = "Map of arn_suffix values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.arn_suffix if v.arn_suffix != null && length(v.arn_suffix) > 0 }
}
output "alb_target_groups_connection_termination" {
  description = "Map of connection_termination values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.connection_termination if v.connection_termination != null }
}
output "alb_target_groups_deregistration_delay" {
  description = "Map of deregistration_delay values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.deregistration_delay if v.deregistration_delay != null && length(v.deregistration_delay) > 0 }
}
output "alb_target_groups_health_check" {
  description = "Map of health_check values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => one(v.health_check) if v.health_check != null && length(v.health_check) > 0 }
}
output "alb_target_groups_ip_address_type" {
  description = "Map of ip_address_type values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.ip_address_type if v.ip_address_type != null && length(v.ip_address_type) > 0 }
}
output "alb_target_groups_lambda_multi_value_headers_enabled" {
  description = "Map of lambda_multi_value_headers_enabled values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.lambda_multi_value_headers_enabled if v.lambda_multi_value_headers_enabled != null }
}
output "alb_target_groups_load_balancer_arns" {
  description = "Map of load_balancer_arns values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.load_balancer_arns if v.load_balancer_arns != null && length(v.load_balancer_arns) > 0 }
}
output "alb_target_groups_load_balancing_algorithm_type" {
  description = "Map of load_balancing_algorithm_type values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.load_balancing_algorithm_type if v.load_balancing_algorithm_type != null && length(v.load_balancing_algorithm_type) > 0 }
}
output "alb_target_groups_load_balancing_anomaly_mitigation" {
  description = "Map of load_balancing_anomaly_mitigation values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.load_balancing_anomaly_mitigation if v.load_balancing_anomaly_mitigation != null && length(v.load_balancing_anomaly_mitigation) > 0 }
}
output "alb_target_groups_load_balancing_cross_zone_enabled" {
  description = "Map of load_balancing_cross_zone_enabled values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.load_balancing_cross_zone_enabled if v.load_balancing_cross_zone_enabled != null && length(v.load_balancing_cross_zone_enabled) > 0 }
}
output "alb_target_groups_name" {
  description = "Map of name values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "alb_target_groups_name_prefix" {
  description = "Map of name_prefix values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.name_prefix if v.name_prefix != null && length(v.name_prefix) > 0 }
}
output "alb_target_groups_port" {
  description = "Map of port values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.port if v.port != null }
}
output "alb_target_groups_preserve_client_ip" {
  description = "Map of preserve_client_ip values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.preserve_client_ip if v.preserve_client_ip != null && length(v.preserve_client_ip) > 0 }
}
output "alb_target_groups_protocol" {
  description = "Map of protocol values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.protocol if v.protocol != null && length(v.protocol) > 0 }
}
output "alb_target_groups_protocol_version" {
  description = "Map of protocol_version values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.protocol_version if v.protocol_version != null && length(v.protocol_version) > 0 }
}
output "alb_target_groups_proxy_protocol_v2" {
  description = "Map of proxy_protocol_v2 values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.proxy_protocol_v2 if v.proxy_protocol_v2 != null }
}
output "alb_target_groups_region" {
  description = "Map of region values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "alb_target_groups_slow_start" {
  description = "Map of slow_start values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.slow_start if v.slow_start != null }
}
output "alb_target_groups_stickiness" {
  description = "Map of stickiness values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => one(v.stickiness) if v.stickiness != null && length(v.stickiness) > 0 }
}
output "alb_target_groups_tags" {
  description = "Map of tags values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "alb_target_groups_tags_all" {
  description = "Map of tags_all values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "alb_target_groups_target_control_port" {
  description = "Map of target_control_port values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.target_control_port if v.target_control_port != null }
}
output "alb_target_groups_target_failover" {
  description = "Map of target_failover values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.target_failover if v.target_failover != null && length(v.target_failover) > 0 }
}
output "alb_target_groups_target_group_health" {
  description = "Map of target_group_health values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => one(v.target_group_health) if v.target_group_health != null && length(v.target_group_health) > 0 }
}
output "alb_target_groups_target_health_state" {
  description = "Map of target_health_state values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.target_health_state if v.target_health_state != null && length(v.target_health_state) > 0 }
}
output "alb_target_groups_target_type" {
  description = "Map of target_type values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.target_type if v.target_type != null && length(v.target_type) > 0 }
}
output "alb_target_groups_vpc_id" {
  description = "Map of vpc_id values across all alb_target_groups, keyed the same as var.alb_target_groups"
  value       = { for k, v in aws_alb_target_group.alb_target_groups : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}

