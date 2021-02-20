terraform {
  required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.37.0"
    }
  }

  backend "gcs" {
    bucket = "conoha-terraform-bucket"
  }
}

provider "openstack" {
  user_name = var.user_name
  password  = var.password
  tenant_id = var.tenant_id
  auth_url  = var.auth_url
}

resource "openstack_compute_keypair_v2" "keypair" {
  name       = "terraform-conoha-vps"
  public_key = var.public_key
}

resource "google_storage_bucket" "terraform-state-store" {
  name          = "conoha-terraform-bucket"
  location      = "asia-northeast1"
  storage_class = "REGIONAL"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      num_newer_versions = 5
    }
  }
}
