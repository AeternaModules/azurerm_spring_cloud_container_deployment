output "spring_cloud_container_deployments" {
  description = "All spring_cloud_container_deployment resources"
  value       = azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments
}
output "spring_cloud_container_deployments_addon_json" {
  description = "List of addon_json values across all spring_cloud_container_deployments"
  value       = [for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : v.addon_json]
}
output "spring_cloud_container_deployments_application_performance_monitoring_ids" {
  description = "List of application_performance_monitoring_ids values across all spring_cloud_container_deployments"
  value       = [for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : v.application_performance_monitoring_ids]
}
output "spring_cloud_container_deployments_arguments" {
  description = "List of arguments values across all spring_cloud_container_deployments"
  value       = [for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : v.arguments]
}
output "spring_cloud_container_deployments_commands" {
  description = "List of commands values across all spring_cloud_container_deployments"
  value       = [for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : v.commands]
}
output "spring_cloud_container_deployments_environment_variables" {
  description = "List of environment_variables values across all spring_cloud_container_deployments"
  value       = [for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : v.environment_variables]
}
output "spring_cloud_container_deployments_image" {
  description = "List of image values across all spring_cloud_container_deployments"
  value       = [for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : v.image]
}
output "spring_cloud_container_deployments_instance_count" {
  description = "List of instance_count values across all spring_cloud_container_deployments"
  value       = [for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : v.instance_count]
}
output "spring_cloud_container_deployments_language_framework" {
  description = "List of language_framework values across all spring_cloud_container_deployments"
  value       = [for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : v.language_framework]
}
output "spring_cloud_container_deployments_name" {
  description = "List of name values across all spring_cloud_container_deployments"
  value       = [for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : v.name]
}
output "spring_cloud_container_deployments_quota" {
  description = "List of quota values across all spring_cloud_container_deployments"
  value       = [for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : v.quota]
}
output "spring_cloud_container_deployments_server" {
  description = "List of server values across all spring_cloud_container_deployments"
  value       = [for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : v.server]
}
output "spring_cloud_container_deployments_spring_cloud_app_id" {
  description = "List of spring_cloud_app_id values across all spring_cloud_container_deployments"
  value       = [for k, v in azurerm_spring_cloud_container_deployment.spring_cloud_container_deployments : v.spring_cloud_app_id]
}

