output "vertex_ai_feature_online_stores_id" {
  description = "Map of id values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no id are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vertex_ai_feature_online_stores_bigtable" {
  description = "Map of bigtable values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no bigtable are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => one(v.bigtable) if v.bigtable != null && length(v.bigtable) > 0 }
}
output "vertex_ai_feature_online_stores_create_time" {
  description = "Map of create_time values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no create_time are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "vertex_ai_feature_online_stores_dedicated_serving_endpoint" {
  description = "Map of dedicated_serving_endpoint values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no dedicated_serving_endpoint are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => one(v.dedicated_serving_endpoint) if v.dedicated_serving_endpoint != null && length(v.dedicated_serving_endpoint) > 0 }
}
output "vertex_ai_feature_online_stores_deletion_policy" {
  description = "Map of deletion_policy values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no deletion_policy are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "vertex_ai_feature_online_stores_effective_labels" {
  description = "Map of effective_labels values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no effective_labels are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "vertex_ai_feature_online_stores_encryption_spec" {
  description = "Map of encryption_spec values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no encryption_spec are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => one(v.encryption_spec) if v.encryption_spec != null && length(v.encryption_spec) > 0 }
}
output "vertex_ai_feature_online_stores_etag" {
  description = "Map of etag values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no etag are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "vertex_ai_feature_online_stores_force_destroy" {
  description = "Map of force_destroy values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no force_destroy are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => v.force_destroy if v.force_destroy != null }
}
output "vertex_ai_feature_online_stores_labels" {
  description = "Map of labels values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no labels are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "vertex_ai_feature_online_stores_name" {
  description = "Map of name values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no name are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vertex_ai_feature_online_stores_optimized" {
  description = "Map of optimized values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no optimized are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => one(v.optimized) if v.optimized != null && length(v.optimized) > 0 }
}
output "vertex_ai_feature_online_stores_project" {
  description = "Map of project values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no project are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => v.project if v.project != null && length(v.project) > 0 }
}
output "vertex_ai_feature_online_stores_region" {
  description = "Map of region values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no region are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vertex_ai_feature_online_stores_state" {
  description = "Map of state values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no state are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => v.state if v.state != null && length(v.state) > 0 }
}
output "vertex_ai_feature_online_stores_terraform_labels" {
  description = "Map of terraform_labels values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no terraform_labels are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "vertex_ai_feature_online_stores_update_time" {
  description = "Map of update_time values across all vertex_ai_feature_online_stores, keyed the same as var.vertex_ai_feature_online_stores except keys with no update_time are omitted"
  value       = { for k, v in google_vertex_ai_feature_online_store.vertex_ai_feature_online_stores : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

