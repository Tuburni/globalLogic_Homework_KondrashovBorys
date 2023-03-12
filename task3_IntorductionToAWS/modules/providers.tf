provider "aws" {                        # Declare an AWS provider block for Terraform to use to create resources on AWS
  region     = "${var.region}"          # Specify the AWS region to create resources in (e.g. us-west-2)
  access_key = "${var.aws_access_key}"  # Specify the AWS access key for Terraform to use to authenticate with AWS
  secret_key = "${var.aws_secret_key}"  # Specify the AWS secret key for Terraform to use to authenticate with AWS
}

# var.region, var.aws_access_key, var.aws_secret_key are refer to variables.tf file