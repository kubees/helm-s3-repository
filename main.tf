resource "aws_s3_bucket" "helm_repository_bucket" {
    bucket = "all-helm-repository"
}

resource "aws_s3_bucket_acl" "name" {
    bucket = aws_s3_bucket.helm_repository_bucket.bucket
    acl = "private"
}
