output "bucket_arn" {
  value       = "${module.s3Module.bucket_arn}"
  description = "The arn of the bucket created"
}
