# This block of code retrieves the latest Ubuntu AMI from the official Ubuntu Amazon Machine Images (AMIs) using the AWS CLI.
data "aws_ami" "latest_ubuntu" {
  owners      = ["099720109477"]                      # Specifies the list of AMI owners to limit the search.
  most_recent = true                                  # Specifies to use the most recent image available.
  filter {                                            # Specifies a filter for the search of the AMI.
    name   = "name"                      
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}


# This block of code creates an SSH key pair to be used to access the EC2 instance.
resource "aws_key_pair" "moodle_key" {
  key_name   = "moodle-key"                           # Specifies the name for the key pair.
  public_key = tls_private_key.rsa.public_key_openssh # Specifies the public key part of the key pair.
}


# This block of code generates an RSA private key to be used for the SSH key pair.
resource "tls_private_key" "rsa" {
  algorithm = "RSA"                                   # Specifies the algorithm used for generating the key pair.
  rsa_bits  = 4096                                    # Specifies the size of the RSA key.
}


# This block of code writes the RSA private key to a local file named "tfkey".
resource "local_file" "TF-key" {
  content  = tls_private_key.rsa.private_key_pem      # Specifies the private key to be saved in the file.
  filename = "tfkey"                                  # Specifies the filename for the file containing the private key.
}

