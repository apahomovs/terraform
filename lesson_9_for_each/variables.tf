# variable "aws_iam_users" {
#   type = list(string)
#   default = [ "tom"]

# }

# variable "aws_iam_users" {
#   type = list(string)
#   default = [ "steve1", "steve1", "steve1", "steve1"]
#for for_each it must be map, or set

# }

####################################################################

#for_each

#map == dictionary == object 
# {
#     key : value
# }

# mymap = {
#     name: david
#     age: 25
#     fav_color: blue
# }

# variable "aws_iam_users" {
#   type = list(string)
#   default = [ "steve2", "tom2"]
# }


# variable "rules" {
#   type = map(any)
#   default = {
#     "ssh from www"    = [22, 22, "ingress", "tcp", "0.0.0.0/0", "ssh from www"]
#     "http from www "  = [80, 80, "ingress", "tcp", "0.0.0.0/0", "http from www"]
#     "https from www " = [443, 443, "ingress", "tcp", "0.0.0.0/0", "https from www"]

#   }
# }
