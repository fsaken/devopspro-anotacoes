resource "cloudflare_record" "wordpress_A" {
  zone_id = var.gmaceu.com.br_zone-id
  name    = "wordpress"
  value   = "teste output"
  type    = "TXT"
  ttl     = 3600
  comment = "wordpress teste"

}