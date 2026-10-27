terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.70"
    }
  }
}

provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
  skip_credentials_validation    = true
  skip_metadata_api_check        = true
  skip_requesting_account_id     = true
  s3_use_path_style              = true

  endpoints {
    s3 = var.endpoint
    s3control = var.endpoint
  }
}