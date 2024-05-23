resource "aws_security_group" "allow_SSH" {
  name        = "allow_tls"
  description = "Allow TCP inbound traffic and all outbound traffic"
    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    }  

  tags = {
    Name = "allow_SSH"
    created="Raja"
    Env="Testing"
  }
}

resource "aws_instance" "demo-instace" {  
  ami                     = "ami-090252cbe067a9e58"
  instance_type           = "t2.micro"
  #count = 3
  count = length(var.instace_name)
  vpc_security_group_ids=[aws_security_group.allow_SSH.id]
  tags = {
    Name = var.instace_name[count.index]
    created="Raja"
    Env="Testing"
  }
} 