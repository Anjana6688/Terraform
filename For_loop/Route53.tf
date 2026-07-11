# resource "aws_route53_record" "awsrecord" {
#     #count = 4
#   zone_id = var.Zoneid
#   name    = "${var.instances[count.index]}.${var.domian_name}"  #if you want to create mongodb.anjana.fun what we define that in variables. Also combined 2 variables.
#   type    = "A"
#   ttl     = 1
#   records = [aws_instance.app_server[count.index].private_ip]
#   allow_overwrite = true # if already existing r53 records overwrite it.
# }

# diff btwn loop and count above one is count

resource "aws_route53_record" "awsrecord" {
 for_each = aws_instance.app_server
  zone_id = var.Zoneid
  name    =  "${each.key}.${var.domian_name}"  #if you want to create mongodb.anjana.fun what we define that in variables. Also combined 2 variables.
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite = true # if already existing r53 records overwrite it.
}