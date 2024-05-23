resource "aws_instance" "demo-instace" {  
  ami                     = "ami-090252cbe067a9e58"
  instance_type           = var.instace_name == "db" ? "t2.small" : "t2.micro"

}