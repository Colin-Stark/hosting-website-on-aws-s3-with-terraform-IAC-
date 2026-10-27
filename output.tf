output "bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.website.id
}

output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.website.arn
}

output "website_url" {
  description = "URL to access the static website via floci"
  value       = "${var.endpoint}/${aws_s3_bucket.website.id}/index.html"
}

output "index_object_key" {
  description = "S3 object key for index.html"
  value       = aws_s3_object.index.key
}
