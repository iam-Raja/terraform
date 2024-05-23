resource "aws_instance" "Demo_Instance" {  
  ami                     = "ami-090252cbe067a9e58"
  instance_type           = "t2.micro"
  tags = {
    Name = "Demo_Instance"
    created="Raja"
    Env="Testing"
  }
} 