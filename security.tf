resource "openstack_networking_secgroup_v2" "spigot_secgroup" {
  name        = "spigot_secgroup"
  description = "Spigot server security group."
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_ssh" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.spigot_secgroup.id
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_rule_spigot" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 25565
  port_range_max    = 25565
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_networking_secgroup_v2.spigot_secgroup.id
}
