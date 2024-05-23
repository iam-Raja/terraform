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

resource "aws_instance" "demo-instance" {  
  count = length(var.instance_name) 
  ami                     = var.ami_id
  instance_type           = var.instance_name[count.index] == "db" ? "t2.small" : "t2.micro"
  vpc_security_group_ids=[aws_security_group.allow_SSH.id]
  tags= merge(
    var.common_tags,
    {
        Name= var.instance_name[count.index]
        Module= var.instance_name[count.index]
    }
  )
} 