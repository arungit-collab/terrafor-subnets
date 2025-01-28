variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "variable for a region in aws"
}

variable "aws_vpc" {
  type        = string
  default     = "10.1.0.0/16"
  description = "variable for network range"
}

variable "subnet_info" {
  type = list(object({
    Name = string
    cidr = string
    az   = string
  }))
  default = [{
    Name = "app-1"
    cidr = "10.1.1.0/24"
    az   = "ap-south-1a"
    },
    {
      Name = "app-2"
      cidr = "10.1.2.0/24"
      az   = "ap-south-1a"
  }]

}