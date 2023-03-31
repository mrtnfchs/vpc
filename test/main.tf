module "vpc" {
  source = "../"

  enable_dns_hostnames = true
  enable_dns_support = true
  #private_subnet = true
  #public_subnet = true
}
