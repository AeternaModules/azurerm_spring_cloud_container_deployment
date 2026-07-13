variable "spring_cloud_container_deployments" {
  description = <<EOT
Map of spring_cloud_container_deployments, attributes below
Required:
    - image
    - name
    - server
    - spring_cloud_app_id
Optional:
    - addon_json
    - application_performance_monitoring_ids
    - arguments
    - commands
    - environment_variables
    - instance_count
    - language_framework
    - quota (block):
        - cpu (optional)
        - memory (optional)
EOT

  type = map(object({
    image                                  = string
    name                                   = string
    server                                 = string
    spring_cloud_app_id                    = string
    addon_json                             = optional(string)
    application_performance_monitoring_ids = optional(list(string))
    arguments                              = optional(list(string))
    commands                               = optional(list(string))
    environment_variables                  = optional(map(string))
    instance_count                         = optional(number)
    language_framework                     = optional(string)
    quota = optional(object({
      cpu    = optional(string)
      memory = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_container_deployments : (
        length(v.image) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_container_deployments : (
        length(v.server) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_container_deployments : (
        v.addon_json == null || (can(jsondecode(v.addon_json)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_container_deployments : (
        v.arguments == null || (alltrue([for x in v.arguments : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_container_deployments : (
        v.commands == null || (alltrue([for x in v.commands : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_container_deployments : (
        v.environment_variables == null || (alltrue([for x in v.environment_variables : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_container_deployments : (
        v.instance_count == null || (v.instance_count >= 1 && v.instance_count <= 500)
      )
    ])
    error_message = "must be between 1 and 500"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_container_deployments : (
        v.language_framework == null || (contains(["springboot"], v.language_framework))
      )
    ])
    error_message = "must be one of: springboot"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_container_deployments : (
        v.quota == null || (v.quota.cpu == null || (length(v.quota.cpu) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_container_deployments : (
        v.quota == null || (v.quota.memory == null || (length(v.quota.memory) > 0))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

