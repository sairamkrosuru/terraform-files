provider "aws" {
  
}
resource "aws_instance" "first" {
    ami = "ami-0cc9838aa7ab1dce7"
    instance_type = "t2.micro"
    key_name = "firstkeypair"
tags = {
    Name = "depend"
}
  }

  resource "aws_s3_bucket" "first" {
    bucket = "sairambucket19@"
    depends_on = [ aws_instance.depend] 
    
  }