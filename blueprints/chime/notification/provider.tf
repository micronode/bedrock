provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${var.assume_role_account}:role/bedrock-chime-admin"
  }
}

variable "assume_role_account" {
  description = "AWS account ID for the role to assume into"
}
