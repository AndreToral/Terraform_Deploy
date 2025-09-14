# Primera aplicacion basada en Nginx
resource "docker_container" "app1" {
  name  = "app1"
  image = var.app_image

  # Conexion a la red de aplicaciones (app_net)
  networks_advanced {
    name = docker_network.app_net.name
  }

  # Exposicion de puertos: el contenedor escucha en el 80,
  # y se publica hacia el host en el puerto 8081
  ports {
    internal = 80
    external = 8081
  }
}

# Segunda aplicacion nginx, expuesta en el puerto 8082
resource "docker_container" "app2" {
  name  = "app2"
  image = var.app_image

  networks_advanced {
    name = docker_network.app_net.name
  }

  ports {
    internal = 80
    external = 8082
  }
}

# Tercera aplicacion nginx, expuesta en el puerto 8083
resource "docker_container" "app3" {
  name  = "app3"
  image = var.app_image

  networks_advanced {
    name = docker_network.app_net.name
  }

  ports {
    internal = 80
    external = 8083
  }
}