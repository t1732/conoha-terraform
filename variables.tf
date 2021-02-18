variable "auth_url" {
  default = "https://identity.tyo1.conoha.io/v2.0"
}

variable "flavor_name" {
  default = "g-c3m2d100"
}

variable "user_name" {
  description = "ConoHa loing username"
  default     = ""
  sensitive   = true
}

variable "password" {
  description = "ConoHa loing password"
  default     = ""
  sensitive   = true
}

variable "tenant_id" {
  description = "ConoHa API tenant ID"
  default     = ""
  sensitive   = true
}

variable "public_key" {
  description = "RSA public_key"
  default     = ""
  sensitive   = true
}

variable "image_id" {
  description = "Container image ID"
  default     = ""
  sensitive   = true
}
