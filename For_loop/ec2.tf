# single ec2 
# resource "aws_instance" "app_server" {
#   ami           = "ami-0220d79f3f480ecf5"
#    instance_type = "t3.micro"
#  vpc_security_group_ids = [aws_security_group.Allow-all-sg.id]
#   tags = {
#     Name = "learn-terraform"
#   }
# }

# Logic for multiple instances
resource "aws_instance" "app_server" {
 # for_each = var.instances
 for_each = toset(var.instances)
  ami           = "ami-0220d79f3f480ecf5"
   #instance_type = each.value # here from variables we defined t3.micro as values for multiple instances so to access all each.value need to be use.
     instance_type = "t3.micro" #though we are using everyting is same instances like t3.micro so we used set.
 vpc_security_group_ids = [aws_security_group.Allow-all-sg.id]
  tags = {
     Name = each.value
        Terraform = "true"
  }
}


resource  "aws_security_group" "Allow-all-sg" { 
name = "Allow-all-sg"

egress {
    from_port        = 0 # from port 0 to to_port 0 means all ports.
    to_port          = 0
    protocol         = "-1" # -1 means all protocols.
    cidr_blocks      = ["0.0.0.0/0"]
  }

ingress {
    from_port        = 0 # from port 0 to to_port 0 means all ports.
    to_port          = 0
    protocol         = "-1" # -1 means all protocols.
    cidr_blocks      = ["0.0.0.0/0"]
  }

tags = {
    name ="Allow-all-sg"
  }
}

