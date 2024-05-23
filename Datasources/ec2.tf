resource "aws_instance" "demo-instance" {  
  ami                     = data.aws_ami.ami_id.id
  instance_type           = "t2.micro"
  tags = {
    Name = "demo-instance"
    created="Raja"
    Env="Testing"
  }
} 