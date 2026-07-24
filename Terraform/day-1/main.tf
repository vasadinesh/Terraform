resource "aws_instance" "name" {
    count = local.instance_count
    ami = local.ami_id
    instance_type = local.instance_type
    region = local.region

  
}