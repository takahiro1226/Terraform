# ---------------------------------------------
#  AWS 設定
# ---------------------------------------------
provider "aws" {
  profile = "terraform"
  region  = "us-east-1"
  # skip_requesting_account_id = true

}

# ---------------------------------------------
# terraform 設定
# ---------------------------------------------
terraform {
  required_version = ">=1.7.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}



# ---------------------------------------------
# Variables　input変数
# ---------------------------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string
}

