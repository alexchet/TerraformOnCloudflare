variable "zone_id" {
  description = "The ID of the Cloudflare zone"
  type        = string
}

variable "records" {
  description = "List of DNS records to create"
  type = list(object({
    name  = string
    value = string
    type  = string
    ttl   = number
  }))
}
