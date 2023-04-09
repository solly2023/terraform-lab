output "public-ip" {
  value = aws_instance.demo1.public_ip
}
output "instance-id" {
  value = aws_instance.demo1

}
output "private-ip" {
  value = aws_instance.demo1.private_ip
  
}
output "instace_type" {
    value = aws_instance.demo1.instance_type
}

  
