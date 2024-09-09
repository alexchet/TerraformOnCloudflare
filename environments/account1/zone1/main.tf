# Cloudflare Zone
module "zone" {
  source     = "../../../modules/cloudflare_zone"
  zone_name  = var.cloudflare_zone_name
  account_id = var.cloudflare_account_id
}

# DNS Records
module "dns_records" {
  source  = "../../../modules/dns_records"
  zone_id = module.zone.zone_id
  records = var.dns_records
}

# Page Rules
module "page_rules" {
  source  = "../../../modules/page_rules"
  zone_id = module.zone.zone_id
  rules   = var.page_rules
}
