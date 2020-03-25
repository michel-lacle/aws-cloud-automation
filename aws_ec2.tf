resource "aws_security_group" "aws-cloud-automation-sg" {
  name = "aws-cloud-automation-sg"
  description = "allow ssh traffic"

  vpc_id = "vpc-bb9f3bc0"

  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "aws-cloud-automation-ec2" {
  ami = "ami-0a887e401f7654935"
  instance_type = "t2.micro"

  key_name = "aws-cloud-automation"

  vpc_security_group_ids = [aws_security_group.aws-cloud-automation-sg.id]

  user_data = file("install.sh")

  tags = {
    Name = "aws-cloud-automation-ec"
    Owner = "terraform-aws-cloud-automation"
    Project = "aws-cloud-automation"
  }
}