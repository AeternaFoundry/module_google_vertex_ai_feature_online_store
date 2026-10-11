resource "google_vertex_ai_feature_online_store" "vertex_ai_feature_online_stores" {
  for_each = var.vertex_ai_feature_online_stores

  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  force_destroy   = each.value.force_destroy
  labels          = each.value.labels
  project         = each.value.project
  region          = each.value.region

  dynamic "bigtable" {
    for_each = each.value.bigtable != null ? [each.value.bigtable] : []
    content {
      auto_scaling {
        cpu_utilization_target = bigtable.value.auto_scaling.cpu_utilization_target
        max_node_count         = bigtable.value.auto_scaling.max_node_count
        min_node_count         = bigtable.value.auto_scaling.min_node_count
      }
      enable_direct_bigtable_access = bigtable.value.enable_direct_bigtable_access
      zone                          = bigtable.value.zone
    }
  }

  dynamic "dedicated_serving_endpoint" {
    for_each = each.value.dedicated_serving_endpoint != null ? [each.value.dedicated_serving_endpoint] : []
    content {
      dynamic "private_service_connect_config" {
        for_each = dedicated_serving_endpoint.value.private_service_connect_config != null ? [dedicated_serving_endpoint.value.private_service_connect_config] : []
        content {
          enable_private_service_connect = private_service_connect_config.value.enable_private_service_connect
          project_allowlist              = private_service_connect_config.value.project_allowlist
        }
      }
    }
  }

  dynamic "encryption_spec" {
    for_each = each.value.encryption_spec != null ? [each.value.encryption_spec] : []
    content {
      kms_key_name = encryption_spec.value.kms_key_name
    }
  }

  dynamic "optimized" {
    for_each = each.value.optimized != null ? [each.value.optimized] : []
    content {
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

