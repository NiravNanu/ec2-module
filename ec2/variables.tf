variable "ami_id" {
    type = string
    description = "Ami Id "
  
}


variable "instance_type" {
  type = string
  description = "Ec2 Instance Type"
}

variable "availability_zone" {
    type = string
    description = "Availability Zone"
  
}

variable "tags" {
    type = map(string)
    description = "Tags"
  
}

variable "security_group_name" {
    type = string
    description = "SG Name"
  
}

variable "security_description" {
    type = string
    description = "SG Description"
}

variable "security_group_inbound_rules" {

    type = list(object ({
        from_port   = number
        to_port     = number
        description = string
        protocol    = string
        cidr_blocks = list(string)

    }))
    description = "Securty Group Inbound Rules"
  
}

variable "sg_tags" {
    type        =  map(string)
    description = "Tag For Security Group"
  
}