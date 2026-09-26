/*  output "ec2_instance_info" {
  value = aws_instance.roboshop[each.key]
} */
 output "ec2_instance_private_ips" {
  value = [for inst in values(aws_instance.roboshop) : inst.private_ip]
}