variable "region" {
    type = string
    default = "us-east-2"
}

variable "event_name" {
    type = string
    default = "your-gameday-name"
}

variable "event_hcp_project_id" {
    type = string
}

variable "cloud_provider" {
    type = string
    default = "aws"
}

variable "hcp_vault_tier" {
    type = string
    default = "dev"
}

variable "hcp_vault_public_endpoint" {
    type = bool
    default = "true"
}