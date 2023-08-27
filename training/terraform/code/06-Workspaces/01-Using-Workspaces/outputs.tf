output "s3bucket_arn" {
  value       = "${aws_s3_bucket.example.arn}"
  description = "The arn of the S3 bucket"
}
