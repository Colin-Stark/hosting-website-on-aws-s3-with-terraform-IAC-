variable "bucket_name" {
  description = "Globally unique S3 bucket name (must include your name)"
  type        = string
  default     = "Collins-website-project-mark1"
}

variable "region" {
  description = "AWS region closest to the user"
  type        = string
  default     = "us-east-1"
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

variable "access_key" {
  description = "AWS access key"
  type        = string
  default     = "test"
}

variable "secret_key" {
  description = "AWS secret key"
  type        = string
  default     = "test"
}

variable "endpoint" {
  description = "AWS endpoint"
  type        = string
  default     = "http://localhost:4566"
}