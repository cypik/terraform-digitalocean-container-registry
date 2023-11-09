output "id" {
  value       = join("", digitalocean_container_registry.main[*].id)
  description = "The ID of the tag. This is the same as the name."
}

output "name" {
  value       = join("", digitalocean_container_registry.main[*].name)
  description = "The name of the container registry"
}

output "subscription_tier_slug" {
  value       = join("", digitalocean_container_registry.main[*].subscription_tier_slug)
  description = "The slug identifier for the subscription tier"
}

output "region" {
  value       = join("", digitalocean_container_registry.main[*].region)
  description = "The slug identifier for the region"
}

output "endpoint" {
  value       = join("", digitalocean_container_registry.main[*].endpoint)
  description = "The URL endpoint of the container registry. Ex:"
}

output "server_url" {
  value       = join("", digitalocean_container_registry.main[*].server_url)
  description = "The domain of the container registry. Ex: registry.digitalocean.com"
}

output "storage_usage_bytes" {
  value       = join("", digitalocean_container_registry.main[*].storage_usage_bytes)
  description = "The amount of storage used in the registry in bytes."
}

output "created_at" {
  value       = join("", digitalocean_container_registry.main[*].created_at)
  description = "The date and time when the registry was created"
}

output "id_docker" {
  value       = join("", digitalocean_container_registry_docker_credentials.main[*].id)
  description = " Credentials for the container registry."
}

output "registry_name" {
  value       = join("", digitalocean_container_registry_docker_credentials.main[*].registry_name)
  description = "The name of the container registry"
}

output "docker_credentials" {
  value       = join("", digitalocean_container_registry_docker_credentials.main[*].docker_credentials)
  description = " Credentials for the container registry."
}

output "expiry_seconds" {
  value       = join("", digitalocean_container_registry_docker_credentials.main[*].expiry_seconds)
  description = "Number of seconds after creation for token to expire."
}

output "credential_expiration_time" {
  value       = join("", digitalocean_container_registry_docker_credentials.main[*].credential_expiration_time)
  description = " The date and time the registry access token will expire."
}

