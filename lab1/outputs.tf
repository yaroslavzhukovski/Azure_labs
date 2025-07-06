output "application_name" {
  value = var.application_name
}
output "environment_name" {
  value = var.environment_name
}
output "environment_prefix" {
  value = local.environment_prefix
}
output "suffix" {
  value = random_string.suffix.result
}
output "api" {
  value     = var.api_key
  sensitive = true
}
output "primery_region" {
  value = var.region[0]
}
output "region_instance_count" {
  value = var.region_instance_count[var.region[1]]
}
