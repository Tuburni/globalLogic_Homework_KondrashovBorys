resource "aws_security_group" "moodle_sg" {
  name        = "Moodle WebServer Security Group"    # name of the security group
  description = "Moodle Security Group with Terraform"    # description of the security group

  # Ingress rules define the incoming traffic rules to allow to the instances in the security group
  ingress {
    from_port   = 80     # allow traffic from port 80
    to_port     = 80     # to port 80
    protocol    = "tcp"  # using TCP protocol
    cidr_blocks = ["0.0.0.0/0"]  # allow traffic from all sources (IP addresses)
  }

  ingress {
    from_port   = 443    # allow traffic from port 443
    to_port     = 443    # to port 443
    protocol    = "tcp"  # using TCP protocol
    cidr_blocks = ["0.0.0.0/0"]  # allow traffic from all sources (IP addresses)
  }

  ingress {
    from_port   = 22     # allow traffic from port 22 (SSH)
    to_port     = 22     # to port 22 (SSH)
    protocol    = "tcp"  # using TCP protocol
    cidr_blocks = ["0.0.0.0/0"]  # allow traffic from all sources (IP addresses)
  }

  # Egress rules define the outgoing traffic rules to allow from the instances in the security group
  egress {
    from_port   = 0      # allow traffic from any port
    to_port     = 0      # to any port
    protocol    = "-1"   # using all protocols
    cidr_blocks = ["0.0.0.0/0"]  # allow traffic to all sources (IP addresses)
  }
}
