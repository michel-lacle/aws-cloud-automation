resource "aws_instance" "aws-cloud-automation-ec2" {
  ami = "ami-0a887e401f7654935"
  instance_type = "t2.micro"

  key_name = "aws-cloud-automation-ec2"

  tags = {
    Name = "aws-cloud-automation-ec"
    Owner = "terraform-aws-cloud-automation"
    Project = "aws-cloud-automation"
  }
}