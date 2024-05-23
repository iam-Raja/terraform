resource "aws_instance" "demo-instace" {  
  for_each = var.instance_name  
  ami                     = "ami-090252cbe067a9e58"
  instance_type           = each.value
  tags = merge (
    var.tags , 
    {
        Name = each.key
    }
  )
} 