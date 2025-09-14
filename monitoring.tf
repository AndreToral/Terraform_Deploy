# Contenedor de Grafana expuesto en el puerto 3000
resource "docker_container" "grafana" {
  name  = "grafana"
  image = var.grafana_image

  # Conexion a la red de monitoreo (monitor_net)
  networks_advanced {
    name = docker_network.monitor_net.name
  }

  ports {
    internal = 3000
    external = 3000
  }
}