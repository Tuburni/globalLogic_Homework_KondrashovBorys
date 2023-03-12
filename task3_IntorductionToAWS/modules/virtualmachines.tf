# Define an EC2 instance named "moodle_server_instance"
resource "aws_instance" "moodle_server_instance" {

  # Set the AMI ID for the latest version of Ubuntu in the current region
  ami = data.aws_ami.latest_ubuntu.id
  
  # Set the instance type for the EC2 instance
  instance_type = "t2.small"
  
  # Set the ID of the security group to apply to the EC2 instance
  vpc_security_group_ids = [aws_security_group.moodle_sg.id]
  
  # Set the name of the key pair to use for SSH access to the instance
  key_name = aws_key_pair.moodle_key.key_name
  
  # Set the path to the user data script to run on instance launch
  user_data = file("user_data.sh")
  
  # Define the root block device settings for the instance
  root_block_device {
    volume_size = "10"
    volume_type = "gp2"
  }
  
  # Define a name tag for the instance
  tags = {
    Name  = "Moodle WebServer build by Terraform"
  }
}
