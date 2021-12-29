
resource "digitalocean_kubernetes_cluster" "project" {
  name    = "k8s-project"
  region  = "nyc1"
  version = "1.21.5-do.0"

  node_pool {
    name       = "project-nodes"
    size       = "s-1vcpu-2gb"
    node_count = 1
    tags       = ["project-nodes"]
  }
}
