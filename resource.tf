resource "openstack_compute_instance_v2" "spigot-server" {
  name        = "spigot-server"
  image_id    = var.image_id
  flavor_name = var.flavor_name
  key_pair    = "terraform-conoha-vps"

  security_groups = [
    "spigot_secgroup",
  ]

  metadata = {
    instance_name_tag = "spigot-server"
  }
}
