resource "aws_instance" "demo-instace" {  
  ami                     = "ami-090252cbe067a9e58"
  instance_type           = "t2.micro"
  tags = {
    Name = "demo-instance"
    created = "Raja"
  }
}