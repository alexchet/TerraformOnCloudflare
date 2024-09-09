output "page_rules" {
  value = cloudflare_page_rule.rule[*].target
}
