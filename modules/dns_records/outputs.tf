output "dns_records" {
  value = cloudflare_record.record[*].name
}
