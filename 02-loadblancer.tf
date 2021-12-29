resource "digitalocean_loadbalancer" "public" {
  name        = "loadbalancer-1"
  region      = "nyc1"
  droplet_tag = "project-nodes"

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 30200
    target_protocol = "http"
  }

}