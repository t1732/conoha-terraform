variable "auth_url" {
  default = "https://identity.tyo1.conoha.io/v2.0"
}

variable "flavor_name" {
  default = "g-c3m2d100"
}

variable "USER_NAME" {
  default   = ""
  sensitive = true
}

variable "PASSWORD" {
  default   = ""
  sensitive = true
}

variable "TENANT_NAME" {
  default   = ""
  sensitive = true
}

variable "PUBLIC_KEY" {
  default   = ""
  sensitive = true
}

variable "image_id" {
  default   = ""
  sensitive = true
}
