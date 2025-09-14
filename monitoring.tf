resource "docker_container" "grafana" {
  name  = "grafana"
  image = var.grafana_image
  networks_advanced {
    name = docker_network.monitor_net.name
  }
  ports {
    internal = 3000
    external = 3000
  }
}