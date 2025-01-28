region  = "ap-south-1"
aws_vpc = "192.168.0.0/16"
subnet_info = [{
  az   = "ap-south-1a"
  cidr = "192.168.1.0/24"
  Name = "arun-1" },
  {
    az   = "ap-south-1b"
    cidr = "192.168.2.0/24"
  Name = "arun-2" },
  {
    az   = "ap-south-1a"
    cidr = "192.168.3.0/24"
  Name = "arun-3" },
  {
    az   = "ap-south-1b"
    cidr = "192.168.4.0/24"
    Name = "arun-4"
  }
]