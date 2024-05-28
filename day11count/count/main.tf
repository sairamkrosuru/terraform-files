provider "aws" {
  
}
resource "aws_instance" "count" {
  ami = "ami-013e83f579886baeb"
  instance_type = "t2.micro"
  key_name = "firstkeypai"
  count = 3
  tags = {
    name = "count-ec2-$(count.index)"
  }
}