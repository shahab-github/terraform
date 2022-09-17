resource "aws_instance" "instance" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key
  security_groups = ["terrasg"]

}

resource "aws_security_group" "secgrp" {
  name        = "terrasg"
  description = "Allows 22 and 80"
  tags = {
    "Name" = "terr-secgrp"
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

