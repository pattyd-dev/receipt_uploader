resource "aws_s3_bucket" "photo_upload_bucket" {
  bucket = var.source_bucket

  tags = {
    Project = var.project_name
  }
}

resource "aws_s3_bucket_cors_configuration" "media" {
  bucket = aws_s3_bucket.photo_upload_bucket.id

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "HEAD"]
    allowed_origins = [
      var.route53_record_for_corrector,        
    ]
    expose_headers  = ["ETag", "Content-Length", "Content-Type"]
    max_age_seconds = 3600
  }

}

resource "aws_s3_bucket" "textract_json_dump_bucket" {
  bucket = var.dest_bucket

  tags = {
    Project = var.project_name
  }
}