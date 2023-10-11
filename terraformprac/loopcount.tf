resource "aws_instance" "DevOpsServers" {
    ami = var.ami_id
    instance_type = var.inst_type
    count = 5
    tags = { 
        Name = var.instance_names[count.index]
    }

    
}
resource "aws_route53_record" "Records"{
    count = 5
    zone_id = var.ZONE_ID
    name =  "${var.instance_names[count.index]}.${var.routeDNS}"
    type = "A"
    ttl  = 1
    records = [aws_instance.DevOpsServers[count.index].private_ip]
    
}