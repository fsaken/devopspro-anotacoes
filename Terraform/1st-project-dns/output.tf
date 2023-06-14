output "wordpress_TXT_record" {
  value = cloudflare_record.wordpress_A.value
}