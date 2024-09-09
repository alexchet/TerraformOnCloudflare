terraform {
  required_version = ">= 1.3.0" # Specify the minimum required Terraform version

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.41.0" # Specify the Cloudflare provider version
    }
  }
}
