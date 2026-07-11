resource "aws_route53_record" "awsrecord" {
    count = 4
  zone_id = var.Zoneid
  name    = "${var.instances[count.index]}.${var.domian_name}"  #if you want to create mongodb.anjana.fun what we define that in variables. Also combined 2 variables.
  type    = "A"
  ttl     = 1
  records = [aws_instance.app_server[count.index].private_ip]
  allow_overwrite = true # if already existing r53 records overwrite it.
}