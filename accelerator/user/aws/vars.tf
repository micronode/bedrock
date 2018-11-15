variable "region" {
  description = "AWS default region"
}

variable "users" {
  description = "Username to create"
  type = "list"
  default = []
}

variable "groups" {
  description = "Usergroup to create"
  type = "list"
  default = []
}