output "zone_id" {
  description = "The ID of the Cloudflare zone"
  value       = cloudflare_zone.zone.id
}
