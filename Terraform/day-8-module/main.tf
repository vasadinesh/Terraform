resource "aws_instance" "name" {
    count = var.instance_count
    ami = var.ami_id
    instance_type = var.instance_type
    region = var.region

  
}