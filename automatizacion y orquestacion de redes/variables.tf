variable "aws_region" {
    description = "Region de aws"
    type = string
    default = "eastus"
}

variable "vpc_cidr" {
  description = "CIDR block para la VPC"
  type        = string
  default     = "172.16.0.0/12"

}

variable "subnet1_cidr" {
  description = "CIDR block para la primera subnet"
  type        = string
  default     = "172.16.1.0/24"
}

variable "subnet2_cidr" {
  description = "CIDR block para la segunda subnet"
  type        = string
  default     = "172.16.2.0/24"
}