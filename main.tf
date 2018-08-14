provider "aws" {
  region = "${var.region}"
}

variable "region" {
  default = "us-east-2"
}

variable "name" {
  default = "nextcloud"
}

variable "domain" {
}

variable "account_id" {
}

terraform {
  backend "s3" {
    bucket = "cayoub-terraform-remote-state"
    key    = "nextcloud"
    region = "us-east-2"
  }
}