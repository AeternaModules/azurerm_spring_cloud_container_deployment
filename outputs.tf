output "spring_cloud_container_deployments_id" {
  description = "Map of id values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.id }
}
output "spring_cloud_container_deployments_addon_json" {
  description = "Map of addon_json values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.addon_json }
}
output "spring_cloud_container_deployments_application_performance_monitoring_ids" {
  description = "Map of application_performance_monitoring_ids values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.application_performance_monitoring_ids }
}
output "spring_cloud_container_deployments_arguments" {
  description = "Map of arguments values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.arguments }
}
output "spring_cloud_container_deployments_commands" {
  description = "Map of commands values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.commands }
}
output "spring_cloud_container_deployments_environment_variables" {
  description = "Map of environment_variables values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.environment_variables }
}
output "spring_cloud_container_deployments_image" {
  description = "Map of image values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.image }
}
output "spring_cloud_container_deployments_instance_count" {
  description = "Map of instance_count values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.instance_count }
}
output "spring_cloud_container_deployments_language_framework" {
  description = "Map of language_framework values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.language_framework }
}
output "spring_cloud_container_deployments_name" {
  description = "Map of name values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.name }
}
output "spring_cloud_container_deployments_quota" {
  description = "Map of quota values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.quota }
}
output "spring_cloud_container_deployments_server" {
  description = "Map of server values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.server }
}
output "spring_cloud_container_deployments_spring_cloud_app_id" {
  description = "Map of spring_cloud_app_id values across all spring_cloud_container_deployments, keyed the same as var.spring_cloud_container_deployments"
  value       = { for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : k => v.spring_cloud_app_id }
}

