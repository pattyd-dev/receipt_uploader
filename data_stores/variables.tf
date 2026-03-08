variable "source_bucket" {
  type = string
}

variable "dest_bucket" {
  type = string
}

variable "dynamo_table_name" {
  type = string
}

variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "aws_user" {
  type    = string
}

variable "project_name" {
  type = string
  default = "MyProject"
}