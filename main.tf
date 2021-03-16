provider "aws" {
    region = "eu-west-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-08bac620dc84221eb" 
  instance_type = "t2.micro" # VM Spec
  security_groups = ["${aws_security_group.allow_all.name}"]
  key_name = "sky"
}

resource "aws_security_group" "allow_all" {
  name        = "Allow all"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
