variable "ami_id" {
  type        = string
  default     = "ami-00e801948462f718a"
  
}

variable "instance_type" {
  type        = list(string)
  default     = ["t2.micro", "t3.micro", "t3a.micro", "t4g.micro", "t2.small", "t3.small", "t3a.small", "t4g.small"]
  
}

variable "vpc_id" {
  type        = string
  default     = "vpc-0c9b8e5e1a2b3c4d"
  
}

variable "instance_count" {
    type = number
    default = 8
  
}

variable "region" {
    type = string
    default = "us-east-1"
  
}