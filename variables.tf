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
  # --- Unconfirmed validation candidates, derived from azurerm_spring_cloud_container_deployment's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.SpringCloudDeploymentName] !ok
  # path: name
  #   source:    [from validate.SpringCloudDeploymentName] !regexp.MustCompile(`^([a-z])([a-z\d-]{2,30})([a-z\d])$`).MatchString(v)
  # path: spring_cloud_app_id
  #   source:    [from validate.SpringCloudAppID] !ok
  # path: spring_cloud_app_id
  #   source:    [from validate.SpringCloudAppID] err != nil
  # path: image
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: server
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: addon_json
  #   source:    validation.StringIsJSON(...) - no translation rule yet, add one
  # path: application_performance_monitoring_ids[*]
  #   source:    [from appplatform2.ValidateApmID] !ok
  # path: application_performance_monitoring_ids[*]
  #   source:    [from appplatform2.ValidateApmID] err != nil
  # path: arguments[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: commands[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: environment_variables[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: instance_count
  #   condition: value >= 1 && value <= 500
  #   message:   must be between 1 and 500
  # path: language_framework
  #   condition: contains(["springboot"], value)
  #   message:   must be one of: springboot
  # path: quota.cpu
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: quota.memory
  #   condition: length(value) > 0
  #   message:   must not be empty
}

