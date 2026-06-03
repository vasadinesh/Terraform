module "aws_instance" {
    source = "../day-8-module"
    instance_count = 1
    ami_id = "ami-0eb38b817b93460ac"
    instance_type = "t2.micro"
    region = "us-east-1"

}