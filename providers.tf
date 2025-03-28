provider "aws" {
  region = "us-east-1" 
}
terraform {
    backend "s3" {
        bucket         = "my-terraform-state-bucket-vincenzo-20250328"
        key            = "vchironi/terraform/state/terraform.tfstate"
        region         = "us-east-1"
        dynamodb_table = "terraform-lock-table"
        description   = "Terraform state file for VPC and EC2 instance"
      
    }
}