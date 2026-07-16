output "spring_cloud_container_deployments_id" {
  description = "Map of id values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "spring_cloud_container_deployments_addon_json" {
  description = "Map of addon_json values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.addon_json if v.addon_json != null && length(v.addon_json) > 0 }
}
output "spring_cloud_container_deployments_application_performance_monitoring_ids" {
  description = "Map of application_performance_monitoring_ids values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.application_performance_monitoring_ids if v.application_performance_monitoring_ids != null && length(v.application_performance_monitoring_ids) > 0 }
}
output "spring_cloud_container_deployments_arguments" {
  description = "Map of arguments values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.arguments if v.arguments != null && length(v.arguments) > 0 }
}
output "spring_cloud_container_deployments_commands" {
  description = "Map of commands values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.commands if v.commands != null && length(v.commands) > 0 }
}
output "spring_cloud_container_deployments_environment_variables" {
  description = "Map of environment_variables values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.environment_variables if v.environment_variables != null && length(v.environment_variables) > 0 }
}
output "spring_cloud_container_deployments_image" {
  description = "Map of image values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.image if v.image != null && length(v.image) > 0 }
}
output "spring_cloud_container_deployments_instance_count" {
  description = "Map of instance_count values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.instance_count if v.instance_count != null }
}
output "spring_cloud_container_deployments_language_framework" {
  description = "Map of language_framework values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.language_framework if v.language_framework != null && length(v.language_framework) > 0 }
}
output "spring_cloud_container_deployments_name" {
  description = "Map of name values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "spring_cloud_container_deployments_quota" {
  description = "Map of quota values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.quota if v.quota != null && length(v.quota) > 0 }
}
output "spring_cloud_container_deployments_server" {
  description = "Map of server values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.server if v.server != null && length(v.server) > 0 }
}
output "spring_cloud_container_deployments_spring_cloud_app_id" {
  description = "Map of spring_cloud_app_id values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.spring_cloud_app_id if v.spring_cloud_app_id != null && length(v.spring_cloud_app_id) > 0 }
}

