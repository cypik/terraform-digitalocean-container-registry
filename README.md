# Terraform-digitalocean-container-registry
# Terraform DigitalOcean cloud container-registry Module


## Table of Contents

- [Introduction](#introduction)
- [Usage](#usage)
- [Examples](#examples)
- [Author](#author)
- [License](#license)
- [Inputs](#inputs)
- [Outputs](#outputs)

## Introduction
This Terraform configuration is designed to create and manage a DigitalOcean container-registry.

## Usage
To use this module, you should have Terraform installed and configured for DIGITALOCEAN. This module provides the necessary Terraform configuration for creating DIGITALOCEAN resources, and you can customize the inputs as needed. Below is an example of how to use this module:

# Example: Container-Registry
You can use this module in your Terraform configuration like this:

```hcl
module "container-registry" {
  source                 = "cypik/container-registry/digitalocean"
  version                = "1.0.1"
  name                   = local.name
  environment            = local.environment
  region                 = local.region
  subscription_tier_slug = "starter"
}
```
This example demonstrates how to create various DIGITALOCEAN resources using the provided modules. Adjust the input values to suit your specific requirements.


## Examples
For detailed examples on how to use this module, please refer to the [examples](https://github.com/cypik/terraform-digitalocean-container-registry/blob/master/example) directory within this repository.

## Author
Your Name Replace **MIT** and **Cypik** with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This Terraform module is provided under the **MIT** License. Please see the [LICENSE](https://github.com/cypik/terraform-digitalocean-container-registry/blob/master/LICENSE) file for more details.


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.6 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.34.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 2.34.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | cypik/labels/digitalocean | 1.0.1 |

## Resources

| Name | Type |
|------|------|
| [digitalocean_container_registry.main](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/container_registry) | resource |
| [digitalocean_container_registry_docker_credentials.main](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/container_registry_docker_credentials) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Whether to create the resources. Set to `false` to prevent the module from creating any resources. | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The name of the container registry | `string` | `""` | no |
| <a name="input_expiry_seconds"></a> [expiry\_seconds](#input\_expiry\_seconds) | Number of seconds after creation for token to expire. | `number` | `1576800000` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. `cypik`,`application`. | `list(any)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | ManagedBy, eg 'cypik' or 'hello@cypik.com' | `string` | `"cypik"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | The slug identifier for the region | `string` | `""` | no |
| <a name="input_subscription_tier_slug"></a> [subscription\_tier\_slug](#input\_subscription\_tier\_slug) | The slug identifier for the subscription tier | `string` | `"starter"` | no |
| <a name="input_write"></a> [write](#input\_write) | Allow for write access to the container registry. Defaults to false. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | The date and time when the registry was created |
| <a name="output_credential_expiration_time"></a> [credential\_expiration\_time](#output\_credential\_expiration\_time) | The date and time the registry access token will expire. |
| <a name="output_docker_credentials"></a> [docker\_credentials](#output\_docker\_credentials) | Credentials for the container registry. |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The URL endpoint of the container registry. Ex: |
| <a name="output_expiry_seconds"></a> [expiry\_seconds](#output\_expiry\_seconds) | Number of seconds after creation for token to expire. |
| <a name="output_id"></a> [id](#output\_id) | The ID of the tag. This is the same as the name. |
| <a name="output_id_docker"></a> [id\_docker](#output\_id\_docker) | Credentials for the container registry. |
| <a name="output_name"></a> [name](#output\_name) | The name of the container registry |
| <a name="output_region"></a> [region](#output\_region) | The slug identifier for the region |
| <a name="output_registry_name"></a> [registry\_name](#output\_registry\_name) | The name of the container registry |
| <a name="output_server_url"></a> [server\_url](#output\_server\_url) | The domain of the container registry. Ex: registry.digitalocean.com |
| <a name="output_storage_usage_bytes"></a> [storage\_usage\_bytes](#output\_storage\_usage\_bytes) | The amount of storage used in the registry in bytes. |
| <a name="output_subscription_tier_slug"></a> [subscription\_tier\_slug](#output\_subscription\_tier\_slug) | The slug identifier for the subscription tier |
<!-- END_TF_DOCS -->