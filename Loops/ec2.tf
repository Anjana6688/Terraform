resource "aws_instance" "app_server" {
  count=4
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
 vpc_security_group_ids = [aws_security_group.Allow-all-sg.id]
  tags = {
    Name = var.instances[count.index]
    Terraform="true"
  
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

