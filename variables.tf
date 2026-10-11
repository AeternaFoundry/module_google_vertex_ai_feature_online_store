variable "vertex_ai_feature_online_stores" {
  description = <<EOT
Map of vertex_ai_feature_online_stores, attributes below
Required:
    - name
Optional:
    - deletion_policy
    - force_destroy
    - labels
    - project
    - region
    - bigtable (block):
        - auto_scaling (required, block):
            - cpu_utilization_target (optional)
            - max_node_count (required)
            - min_node_count (required)
        - enable_direct_bigtable_access (optional)
        - zone (optional)
    - dedicated_serving_endpoint (block):
        - private_service_connect_config (optional, block):
            - enable_private_service_connect (required)
            - project_allowlist (optional)
    - encryption_spec (block):
        - kms_key_name (required)
    - optimized (block):
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    deletion_policy = optional(string)
    force_destroy   = optional(bool)
    labels          = optional(map(string))
    project         = optional(string)
    region          = optional(string)
    bigtable = optional(object({
      auto_scaling = object({
        cpu_utilization_target = optional(number)
        max_node_count         = number
        min_node_count         = number
      })
      enable_direct_bigtable_access = optional(bool)
      zone                          = optional(string)
    }))
    dedicated_serving_endpoint = optional(object({
      private_service_connect_config = optional(object({
        enable_private_service_connect = bool
        project_allowlist              = optional(list(string))
      }))
    }))
    encryption_spec = optional(object({
      kms_key_name = string
    }))
    optimized = optional(object({
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

