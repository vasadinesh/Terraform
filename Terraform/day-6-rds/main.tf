
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "my-vpc"
  }
}


resource "aws_security_group" "rds" {
  name        = "rds-sg"
  description = "Allow PostgreSQL/MySQL inbound traffic"
  vpc_id      = module.vpc.vpc_id   # tie it to your VPC

  ingress {
    description = "PostgreSQL from anywhere (restrict in prod)"
    from_port   = 5432   # use 3306 for MySQL
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]   # lock this down in production!
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "rds-sg"
  }
}

resource "aws_db_subnet_group" "education" {
 name = "education"
 subnet_ids = module.vpc.public_subnets
 tags = {
   Name = "Education"
 }
}

resource "aws_db_instance" "education" {
 identifier = "education"
 instance_class = "db.t3.micro"
 allocated_storage = 5
 engine = "postgres"
 username = "educationadmin"
 password = "MySecurePass123!"
 db_subnet_group_name = aws_db_subnet_group.education.name
 vpc_security_group_ids = [aws_security_group.rds.id]
 publicly_accessible = true
 skip_final_snapshot = true
}