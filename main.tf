terraform {
  required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.37.0"
    }
  }
}

provider "openstack" {
  user_name   = var.user_name
  password    = var.password
  tenant_name = var.tenant_name
  auth_url    = var.auth_url
}

resource "openstack_compute_keypair_v2" "keypair" {
  name       = "terraform-conoha-vps"
  public_key = var.public_key
}
