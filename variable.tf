variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "The name of the container registry"
}

variable "managedby" {
  type        = string
  default     = "cypik"
  description = "ManagedBy, eg 'cypik' or 'hello@cypik.com'"
}

variable "label_order" {
  type        = list(any)
  default     = ["name", "environment"]
  description = "Label order, e.g. `cypik`,`application`."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Whether to create the resources. Set to `false` to prevent the module from creating any resources."
}

variable "subscription_tier_slug" {
  type        = string
  default     = "starter"
  description = " The slug identifier for the subscription tier"
}

variable "region" {
  type        = string
  default     = ""
  description = "The slug identifier for the region"
}

variable "write" {
  type        = bool
  default     = false
  description = "Allow for write access to the container registry. Defaults to false."
}

variable "expiry_seconds" {
  type        = number
  default     = 1576800000
  description = "Number of seconds after creation for token to expire."
}


