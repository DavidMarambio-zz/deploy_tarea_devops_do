provider "kubernetes" {
  host  = digitalocean_kubernetes_cluster.project.endpoint
  token = digitalocean_kubernetes_cluster.project.kube_config[0].token
  cluster_ca_certificate = base64decode(
    digitalocean_kubernetes_cluster.project.kube_config[0].cluster_ca_certificate
  )
}

locals {
  app_labels = {
    App  = var.app_name
    Tier = "frontend"
  }
  mysql_labels = {
    App  = var.app_name
    Tier = "mysql"
  }
}

resource "kubernetes_namespace_v1" "namespaces" {
  metadata {
    annotations = {
      name = var.name
    }

    labels = {
      namespace = var.namespace
    }

    name = var.namespace
  }
}