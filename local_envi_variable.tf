
locals {
  environment = "team work"
  region      = "us-east-1"
  instance_type = "t2.medium"
}

# Output the local variables
output "environment" {
  value = local.environment
}

output "region" {
  value = local.region
}

output "instance_type" {
  value = local.instance_type
}

