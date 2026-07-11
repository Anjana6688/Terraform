# setting up aws provider.
terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
     version = "~> 6.0"
 }
   }
     backend "s3" {
    bucket = "central-remote-state-86s" #your bucket name
    key    = "remote-state-1"
    region = "us-east-1"
       use_lockfile = true #to lock the state file.
    encrypt = true
 
 }
}
provider "aws" {
 region = "us-east-1"
}