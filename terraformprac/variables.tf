variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"
}

variable "inst_type" {
    type = string
    default = "t2.micro"
}

variable "tags"{
    type = map
    default = {
        Environment = "DEV"
        Terrafrom = "true"
        Project = "HariForm"
    }
}
variable "cidr_range" {
    type = list
    default = ["0.0.0.0/0"]
}
variable "instance_names"{
    type = list
    default = [
        "mongodb1",
        "cart1",
        "catalogue1",
        "redis1",
        "mysql1"
    ]
}

variable "routeDNS"{
    type = string
    default = "haridevopspractice.online"
}

variable "ZONE_ID"{
    type = string
    default = "Z01630551EKUZKD4RRM3I"
}