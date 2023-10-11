output "public_ipaddr"{
    value = aws_instance.DevOpsServers[*].public_ip
}
output "private_ipaddr"{
    value = aws_instance.DevOpsServers[*].private_ip
}