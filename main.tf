terraform {
  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.90.0"
    }
  }
}

provider "hcp" {}

resource "hcp_hvn" "event_cluster" {
  hvn_id         = "${var.event_name}-hvn"
  cloud_provider = var.cloud_provider
  region         = var.region
}

resource "hcp_vault_cluster" "event_cluster" {
  cluster_id      = var.event_name
  hvn_id          = hcp_hvn.event_cluster.hvn_id
  tier            = var.hcp_vault_tier
  public_endpoint = var.hcp_vault_public_endpoint
}

resource "hcp_vault_cluster_admin_token" "event_cluster" {
  cluster_id = hcp_vault_cluster.event_cluster.cluster_id
}