
# Creamos un dominio nuevo
resource "digitalocean_domain" "project" {
  name = var.domain
}

# Add a record to the domain
resource "digitalocean_record" "www" {
  domain = digitalocean_domain.project.name
  type   = "A"
  name   = "www"
  ttl    = "30"
  value  = digitalocean_loadbalancer.public.ip
}
