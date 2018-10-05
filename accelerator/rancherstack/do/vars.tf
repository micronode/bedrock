variable "rancher_url" {
  description = "Base URL of Rancher API"
  default = "http://rancher.mnode.org"
}

variable "rancher_access_key" {
  description = "Rancher API access key"
}

variable "rancher_secret_key" {
  description = "Rancher API secret key"
}

//variable "ssh_key" {
//  description = "Identifier of public key file for SSH access to droplets"
//}

variable "ssh_private_key" {
  description = "Location of private key file for SSH access to droplets"
  default = "~/.ssh/id_rsa"
}

variable "enabled" {
  description = "Start/stop the rancher stack"
}

variable "environment" {
  description = "Environment identifier for the rancher hosts"
}

variable "stack_name" {
  description = "Name of the Rancher stack"
}

variable "hostname" {
  description = "Hostname to configure in virtual host"
}

variable "reverseproxy_host" {
  description = "Host to install vhost configuration"
}

variable "bastion_host" {
  description = "Bastion host used to access reverse proxy"
}

variable "target_url" {
  description = "Target URL for vhost configuration"
}

variable "catalog_id" {
  description = "ID of predefined stack in Rancher catalog"
  default = ""
}

variable "docker_compose" {
  description = "Location of docker-compose file"
  default = ""
}

variable "rancher_compose" {
  description = "Location of rancher-compose file"
  default = ""
}

locals {
  uuid = "${var.environment}-rancherstack"
}
