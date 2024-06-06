variable "region" {
  type    = string
  default = "us-east-2"
}

variable "event_name" {
  type    = string
  validation {
    condition     = can(regex("^[-a-zA-Z0-9_]+$", var.event_name))
    error_message = "Event name must only contain alphanumeric characters, dashes, and underscores."
  }
}

variable "cloud_provider" {
  type    = string
  default = "aws"
  validation {
    condition     = can(regex("^(aws|azure)$", var.cloud_provider))
    error_message = "Cloud provider must be one of 'aws', or 'azure'."
  }
}

variable "hcp_vault_tier" {
  type    = string
  default = "dev"
  validation {
    condition     = can(regex("^(dev|starter_small|standard_small)$", var.hcp_vault_tier))
    error_message = "HCP Vault tier must be one of 'dev', 'starter_small', or 'standard_small'."
  }
}

variable "hcp_vault_public_endpoint" {
  type    = bool
  default = "true"
}