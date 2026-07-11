# if you are uisng list its consists string so use to_set to convert,or else if its consists different values like t3,t2,medium we can use map.

# variable "instances" {
#     default = ["mongodb","mysql","redis","rabitmq"]
# }
  # variable "instances" {
  #   default = {
  #       mongodb = "t3.micro"
  #       redis = "t3.micro"
  #       mysql = "t3.small"
  #   }
  # }
variable "instances" {
default = [ "mongodb", "redis"]
}

variable "Zoneid" {
    default = "Z100354714Q7Y7MA4LCQB"
}

variable "domian_name" {
    default = "anjana.fun"
}