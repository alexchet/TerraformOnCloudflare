resource "cloudflare_record" "record" {
  count   = length(var.records)
  zone_id = var.zone_id
  name    = var.records[count.index].name
  content   = var.records[count.index].value
  type    = var.records[count.index].type
  ttl     = var.records[count.index].ttl
}
