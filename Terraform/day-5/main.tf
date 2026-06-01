resource "aws_instance" "example" {
  ami           = "ami-0eb38b817b93460ac"
  instance_type = "t3.micro"
  count         = 1


    tags = {
        Name = "test"
    }
}