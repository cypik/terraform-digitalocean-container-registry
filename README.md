# terraform-digitalocean-container-registry
# DigitalOcean Terraform Configuration

## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Examples](#examples)
- [License](#license)

## Introduction
This Terraform configuration is designed to create and manage a DigitalOcean container-registry.

## Usage
To use this module, you should have Terraform installed and configured for DIGITALOCEAN. This module provides the necessary Terraform configuration for creating DIGITALOCEAN resources, and you can customize the inputs as needed. Below is an example of how to use this module:

#  Example:
You can use this module in your Terraform configuration like this:

```hcl
module "container-registry" {
  source                 = "git::https://github.com/opz0/terraform-digitalocean-container-registry.git?ref=v1.0.0"
  name                   = local.name
  environment            = local.environment
  region                 = local.region
  subscription_tier_slug = "starter"
}
```
This example demonstrates how to create various DIGITALOCEAN resources using the provided modules. Adjust the input values to suit your specific requirements.


## Module Inputs

- 'name':  The name of the container_registry
- 'region' : The slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically.
- 'subscription_tier_slug' : The slug identifier for the subscription tier to use (starter, basic, or professional)



## Module Outputs

This module does not produce any outputs. It is primarily used for labeling resources within your Terraform configuration.

- 'id' : The id of the container registry
- 'name' : The name of the container registry
- 'subscription_tier_slug' :  The slug identifier for the subscription tier
- 'region' :  The slug identifier for the region
- 'endpoint' : The URL endpoint of the container registry. Ex: registry.digitalocean.com/my_registry
- 'server_url' : The domain of the container registry. Ex: registry.digitalocean.com
- 'storage_usage_bytes' :  The amount of storage used in the registry in bytes.
- 'created_at' : The date and time when the registry was created


## Examples
For detailed examples on how to use this module, please refer to the 'examples' directory within this repository.

## License
This Terraform module is provided under the '[License Name]' License. Please see the [LICENSE](https://github.com/opz0/terraform-digitalocean-container-registry/blob/master/LICENSE) file for more details.

## Author
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.
