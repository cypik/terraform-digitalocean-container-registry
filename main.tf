module "labels" {
  source      = "git::https://github.com/cypik/terraform-digitalocean-labels.git?ref=v1.0.0"
  name        = var.name
  environment = var.environment
  managedby   = var.managedby
  label_order = var.label_order
}

##-------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Description : Provides a DigitalOcean Container Registry resource. A Container Registry is a secure, private location to store your containers for rapid deployment.
##--------------------------------------------------------------------------------------------------------------------------------------------------------------------
resource "digitalocean_container_registry" "main" {
  count                  = var.enabled ? 1 : 0
  name                   = var.name
  subscription_tier_slug = var.subscription_tier_slug
  region                 = var.region
}

##------------------------------------------------------------------------------
#Description : Get Docker credentials for your DigitalOcean container registry.
##------------------------------------------------------------------------------
resource "digitalocean_container_registry_docker_credentials" "main" {
  count          = var.enabled ? 1 : 0
  registry_name  = join("", digitalocean_container_registry.main[*].name)
  write          = var.write
  expiry_seconds = var.expiry_seconds
}