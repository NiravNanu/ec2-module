output "ec2_instance_id" {
    value = aws_instance.nirav.id

}

output "ec2_instance_privateip" {
   value = aws_instance.nirav.private_ip
}


output "sg_id" {
  value = aws_security_group.sg.id
}