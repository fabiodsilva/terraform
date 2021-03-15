resource "aws_instance" "leroy" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = ["sg_develop"]
    key_name = "lab"
    tags = {
        Name = var.ec2name
}
}

resource "aws_instance" "jetsons" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = ["sg_develop"]
    key_name = "lab"
    tags = {
        Name = var.ec2name
}
}

