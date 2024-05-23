resource "aws_security_group" "allow_SSH" {
  name        = var.name
  description = "Allow TCP inbound traffic and all outbound traffic"
    ingress {
    from_port        = var.port
    to_port          = var.port
    protocol         = var.protocol
    cidr_blocks      = var.allowed_cidr

  }
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.allowed_cidr
    }  

  tags = {
    Name = "allow_SSH"
    created="Raja"
    Env="Testing"
  }
}

resource "aws_instance" "demo-instace" {  
  ami                     = var.ami_id
  instance_type           = var.instance_type
  vpc_security_group_ids=[aws_security_group.allow_SSH.id]
  tags = var.tags
} 