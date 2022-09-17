resource "aws_key_pair" "key" {
  key_name   = "terrkey"
  public_key = file("/home/shahab/terraform/key.pub")  #you need to create this key using $(ssh-keygen) & copy public key here

}

resource "aws_instance" "instance" {
  ami             = "ami-05fa00d4c63e32376"
  instance_type   = "t2.micro"
  key_name        = "terrkey"
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

