module "webserver" {
    source                       = "./ec2"
    ami_id                       = "ami-04a81a99f5ec58529"
    instance_type                = "t2.micro"
    availability_zone            = "us-east-1"
    tags                         = { "Name" : "Webserver"}
    security_group_name          = "Webserver_Sg"
    security_description         = "Allow SSH, HTTP & HTTPS Ports"
    security_group_inbound_rules = [{
      from_port   = 22
      to_port     = 22
      description = "Allow SSH"
      protocol    = "tcp"
      cidr_blocks =["0.0.0.0/0"]
    },
    {
      from_port   = 80
      to_port     = 80
      description = "Allow HTTP"
      protocol    = "tcp"
      cidr_blocks =["0.0.0.0/0"]
    },
    {
      from_port   = 443
      to_port     = 443
      description = "Allow HTTPS"
      protocol    = "tcp"
      cidr_blocks =["0.0.0.0/0"]
    }]
    sg_tags = {"Name" : "Webserver_SG","Managed":"Terraform"}

    
}