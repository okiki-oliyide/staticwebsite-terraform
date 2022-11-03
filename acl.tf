# acl
resource "aws_s3_bucket_acl" "oof" {
  bucket = "var.oof_bucket"
  acl    = "public-read"
}