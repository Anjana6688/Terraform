resource "aws_instance" "app_server" {
  ami           = var.AMI_id
  instance_type = var.instance_type
 vpc_security_group_ids = [aws_security_group.Allow-all-sg.id]
  tags = var.ec2_tags
}

resource  "aws_security_group" "Allow-all-sg" { 
name = var.Sg_name

egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.protocol # -1 means all protocols
    cidr_blocks      = var.cidr_blocks
  }

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
  }

tags = {
    name ="Allow-all-sg"
  }
}

