locals {
    ami_id="ami-090252cbe067a9e58"
    instance_type = var.instance_name == "Demo_Instance" ? "t2.micro" : "t2.small"
    tags= {
        Name="locals"
    }
}