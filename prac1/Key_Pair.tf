resource "aws_key_pair" "DevOpsKeyPair" {
    key_name = "DevOpsKeyPair"
    public_key = file("${path.module}/NewDevOps.pub")
}