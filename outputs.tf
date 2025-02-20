output "vpc_id" {
  value       = module.my_vpc.default_vpc_id
  description = "AWS VPC ID"
}