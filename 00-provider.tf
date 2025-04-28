terraform {
  required_providers {
    # aws provider
    #==================
    aws = {
      source = "hashicorp/aws"
      version = "5.96.0"
    }

    # Namecheap provider
    #==================
  #   namecheap = {
  #     source = "namecheap/namecheap"
  #     version = "2.2.0"
  #   }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

# provider "namecheap" {
#   user_name = "smartobi"
#   api_user = "smartobi"
#   api_key = "a3ca57241b794d44b0fc3387ca9b62a9"
#   client_ip = "109.202.243.188"
#   use_sandbox = false
# }
