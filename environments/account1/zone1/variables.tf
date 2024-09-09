variable "cloudflare_email" {
  description = "Cloudflare account email"
  type        = string
}

variable "cloudflare_api_key" {
  description = "Cloudflare API key"
  type        = string
}

variable "cloudflare_account_id" {
  description = "Cloudflare Account ID"
  type        = string
}

variable "cloudflare_zone_name" {
  description = "Name of the Cloudflare zone"
  type        = string
}

variable "dns_records" {
  description = "DNS records for the zone"
  type = list(object({
    name  = string
    value = string
    type  = string
    ttl   = number
  }))
}

variable "page_rules" {
  description = "Page rules for the zone"
  type = list(object({
    target      = string
    priority    = number
    cache_level = string
    forwarding_url = string
    status_code = number
  }))
}
