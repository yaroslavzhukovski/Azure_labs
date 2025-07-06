resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}
locals {
  environment_prefix = "${var.application_name}-${var.environment_name}-${random_string.suffix.result}"
}

resource "random_string" "list" {
  count = length(var.region)

  length  = 6
  upper   = false
  special = false
}

resource "random_string" "map" {
  for_each = var.region_instance_count

  length  = 6
  upper   = false
  special = false
}
module "zhukouski" {
  source = "./modules/rando"
}
