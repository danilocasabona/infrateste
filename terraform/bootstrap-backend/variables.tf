variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "prefix" {
  type    = string
  default = "hackathon"
}

# Precisa ser único globalmente. Sugestão: hackathon-tfstate-<account_id>-us-east-1
variable "state_bucket_name" {
  type = string
}

variable "lock_table_name" {
  type    = string
  default = "hackathon-tf-lock"
}