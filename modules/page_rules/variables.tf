variable "zone_id" {
  description = "The ID of the Cloudflare zone"
  type        = string
}

variable "rules" {
  description = "List of Page Rules to create"
  type = list(object({
    target      = string
    priority    = number
    cache_level = string
    forwarding_url = string
    status_code = number
  }))
}
