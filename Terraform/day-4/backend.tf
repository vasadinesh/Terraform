terraform {
  backend "s3" {
    bucket = "devopscreates3"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
