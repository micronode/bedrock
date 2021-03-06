//variable "ssh_key" {
//  description = "Identifier of public key file for SSH access to droplets"
//}

variable "ssh_private_key" {
  description = "Location of private key file for SSH access to droplets"
  default     = "~/.ssh/id_rsa"
}

variable "enabled" {
  description = "Start/stop the rancher stack"
  default     = "true"
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

variable "nginx_host" {
  description = "Host to install vhost configuration"
}

variable "bastion_fqdn" {
  description = "Bastion host used to access reverse proxy"
}

variable "target_hosts" {
  type        = "list"
  description = "List of target hosts for vhost configuration"
}

variable "target_port" {
  description = "Target port for vhost configuration"
  default     = "8080"
}

variable "catalog_id" {
  description = "ID of predefined stack in Rancher catalog"
  default     = ""
}

variable "docker_compose" {
  description = "Location of docker-compose file"
  default     = "docker-compose.yml"
}

variable "rancher_compose" {
  description = "Location of rancher-compose file"
  default     = "rancher-compose.yml"
}

variable "ssl_enabled" {
  description = "Enable SSL with Let's Encrypt"
}

locals {
  uuid = "${var.environment}-${substr(sha256(var.hostname), -10, -1)}"
}
