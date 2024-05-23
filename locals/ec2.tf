resource "aws_instance" "demo-instace" {  
  ami                     = local.ami_id
  instance_type           = local.instance_type
  tags = local.tags
}