resource "cloudflare_page_rule" "rule" {
  count    = length(var.rules)
  zone_id  = var.zone_id
  target   = var.rules[count.index].target
  priority = var.rules[count.index].priority

  actions {
    cache_level = var.rules[count.index].cache_level
    forwarding_url {
      url         = var.rules[count.index].forwarding_url
      status_code = var.rules[count.index].status_code
    }
  }
}
