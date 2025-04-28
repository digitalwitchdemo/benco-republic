# resource "namecheap_domain_records" "my-domain-com" {
#   domain = "cloudwitches.online"
#   email_type = "MX"

#   record {
#     hostname = "benco"
#     type = "A"
#     address = aws_instance.web.public_ip
#   }

#   record {
#     hostname = "@"
#     type = "ALIAS"
#     address = "benco.cloudwitches.online"
#     ttl = 60
#   }
# }