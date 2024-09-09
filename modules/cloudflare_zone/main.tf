resource "cloudflare_zone" "zone" {
  zone = var.zone_name
  account_id = var.account_id
}