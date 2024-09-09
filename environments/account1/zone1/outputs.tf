# Output the Cloudflare Zone ID
output "zone_id" {
  description = "The Cloudflare Zone ID for the zone"
  value       = module.zone.zone_id
}

# Output the DNS Records
output "dns_records" {
  description = "The DNS records created for this zone"
  value       = module.dns_records
}

# Output the Page Rules
output "page_rules" {
  description = "The Page Rules applied to the zone"
  value       = module.page_rules
}

# Optionally, output the Cloudflare account ID being used
output "account_id" {
  description = "The Cloudflare Account ID used"
  value       = var.cloudflare_account_id
}
