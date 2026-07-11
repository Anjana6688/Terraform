data "aws_ami" "latestamiid" {
most_recent = true
owners = ["973714476881"]

filter {
name = "name"
values = ["Redhat-9-DevOps-Practice"]
}
 filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

# to get the ami id
output "ami_id" {
    value = data.aws_ami.latestamiid.id
}

# to fetch instance 
data "aws_instance" "mongodb" {
    instance_id = "i-0355f99cd46d41298"
}

# 
output "mongodb_info" {
    value = data.aws_instance.mongodb.public_ip
}