# terraform {
#   backend "s3" {
#     bucket       = "devopscreates3"
#     key          = "terraform.tfstate"
#     region       = "us-east-1"
#     use_lockfile = true
#     # dynamodb_table = "terraform-state-lock-dynamo"
    
#   }
# }
terraform {
  backend "s3" {
    bucket         = "devopscreates3"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = true
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}