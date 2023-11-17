provider "digitalocean" {

}

locals {
  name        = "opz"
  environment = "test"
  region      = "nyc3"
}

##------------------------------------------------
## container registry module call
##------------------------------------------------
module "container-registry" {
  source                 = "./../"
  name                   = local.name
  environment            = local.environment
  region                 = local.region
  subscription_tier_slug = "starter"
}