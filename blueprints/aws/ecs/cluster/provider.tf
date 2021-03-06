provider "aws" {
  version = ">= 2.7.0"
  assume_role {
    role_arn = "arn:aws:iam::${var.assume_role_account}:role/ecs-blueprint-role"
  }
}

provider "tls" {
  version = "~> 2.1"
}

variable "assume_role_account" {
  description = "AWS account ID for the role to assume into"
}
