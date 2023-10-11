resource "aws_security_group" "Security_group" {
        name = "DevOpsSecGroup"
        description = "Allow To all Ports"

        ingress { 
            description = "Allow to All Ports"
            from_port = 0
            to_port =  0
            protocol = "tcp"
            cidr_blocks = var.cidr_range
                
        }
        egress {
            from_port  = 0
            to_port = 0
            protocol ="-1"
            cidr_blocks = var.cidr_range
        }


}