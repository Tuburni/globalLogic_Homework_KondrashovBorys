output "instance_public_ip" {                                  # Define a Terraform output variable called "instance_public_ip"
  description = "Public IP of EC2 instance"                    # Add a description to the output variable
  value       = aws_instance.moodle_server_instance.public_ip  # Set the value of the output variable to the public IP address of the EC2 instance
}
