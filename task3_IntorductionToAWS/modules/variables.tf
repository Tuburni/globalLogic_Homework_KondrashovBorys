variable "region" {
  type        = string 
  description = "AWS region"
  default     = "eu-central-1" # insert your region
}

variable "aws_access_key" {
  type        = string
  description = "AWS access key"
  default    = "" #insert your AWS access key
}

variable "aws_secret_key" {
  type        = string
  description = "AWS secret key"
  default    = "" #insert your AWS secret key
}

/*if you want, you can use this 
export aws_access_key=
export aws_secret_key=
export aws_region=
unset aws_access_key
unset aws_secret_key
unset aws_region*/
