output "bucket_arn" {
  value       = "${aws_s3_bucket.bucket.arn}"
  description = "The arn of the bucket created"
}
