variable "auth_url" {
  default = "https://identity.tyo1.conoha.io/v2.0"
}

variable "flavor_name" {
  default = "g-c3m2d100"
}

variable "user_name" {
  default   = ""
  sensitive = true
}

variable "password" {
  default   = ""
  sensitive = true
}

variable "tenant_name" {
  default   = ""
  sensitive = true
}

variable "public_key" {
  default   = ""
  sensitive = true
}

variable "image_id" {
  default   = ""
  sensitive = true
}
