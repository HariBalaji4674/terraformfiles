resource "aws_instance" "instance1" {
            ami             =  var.ami_id
            instance_type   =  var.inst_type
            tags            = var.tags
}