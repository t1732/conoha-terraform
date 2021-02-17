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
  user_name   = var.USER_NAME
  password    = var.PASSWORD
  tenant_name = var.TENANT_NAME
  auth_url    = var.auth_url
}

resource "openstack_compute_keypair_v2" "keypair" {
  name       = "terraform-conoha-vps"
  public_key = var.PUBLIC_KEY
}
