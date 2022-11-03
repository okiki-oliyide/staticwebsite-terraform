# create static-web
resource "aws_s3_bucket_website_configuration" "oof" {
  bucket = "var.oof_bucket"

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  routing_rule {
    condition {
      key_prefix_equals = "docs/"
    }
    redirect {
      replace_key_prefix_with = "documents/"
    }
  }
}
