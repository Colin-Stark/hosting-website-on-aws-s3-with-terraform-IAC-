resource "aws_s3_bucket" "website" {
  bucket = var.bucket_name

  tags = var.tags
}



resource "aws_s3_bucket_ownership_controls" "website-controls" {
  bucket = aws_s3_bucket.website.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_versioning" "website-versioning" {
  bucket = aws_s3_bucket.website.id

  versioning_configuration {
    status = "Enabled"
  }
}

#Upload the website files to the S3 bucket
resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.website.bucket
  key    = "index.html"
  source = "index.html"
  content_type = "text/html"
}

resource "aws_s3_object" "style" {
  bucket = aws_s3_bucket.website.bucket
  key    = "assets/aws-logo.png"
  source = "assets/aws-logo.png"
  content_type = "image/png"
}


resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.website.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}
