variable "ami_id" {
  type        = string
  description = "ID de la AMI para lanzar la instancia (por ejemplo, Amazon Linux 2)"
}

variable "instance_name" {
  type        = string
  description = "Nombre que se asignará a la instancia"
  default     = "Terraform-EC2"
}