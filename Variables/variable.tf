variable "AMI_id" {
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
   default = "t3.micro"
}

#map
variable "ec2_tags" {
    type = map
    default = {
       Name = "learn-terraform"
       Terraform = "True"
       Environment = "dev"
       Owner = "Anjana"
  }
}

#string
variable "Sg_name" {
    type = string
    default = "Allow-all_sg"
    #optional
    description = "security group name to attach to EC2 instance"
}

#list

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
  
}

#numbers
variable "ingress_from_port" {
    type = number
    default = 0
}

variable "ingress_to_port" {
    type = number
    default = 0
}

variable "egress_from_port" {
    default = 0
}

variable "egress_to_port" {
    default = 0
}

variable "protocol" {
    type = string
    default = "-1"
}