resource "aws_instance" "name" {
    ami = var.ami_id
    region = var.region
    instance_type = var.instance_type[count.index]
    count = var.instance_count
  
    
}
