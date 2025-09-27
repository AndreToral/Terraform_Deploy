# Primera aplicacion basada en Nginx
resource "docker_container" "app1" {
  name  = "app1"
  image = var.app_image

  # Conexion a la red de aplicaciones (app_net)
  networks_advanced {
    name = docker_network.app_net.name
  }

  # La app necesita estar en ambas redes:
  # 1) monitor_net: para que Grafana pueda acceder a la app
  # 2) persistence_net: para que la app pueda conectarse con Redis/Postgres
  networks_advanced {
    name = docker_network.monitor_net.name
  }
  
  networks_advanced {
    name = docker_network.persistence_net.name
  }
  
  # Exposicion de puertos: el contenedor escucha en el 80,
  # y se publica hacia el host en el puerto 8081
  ports {
    internal = 80
    external = 8081
  }

  # Montar HTML personalizado
  volumes {
    host_path      = abspath("${path.module}/ansible/files/index1.html")
    container_path = "/usr/share/nginx/html/index.html"
  }
}

# Segunda aplicacion nginx, expuesta en el puerto 8082
resource "docker_container" "app2" {
  name  = "app2"
  image = var.app_image

  networks_advanced {
    name = docker_network.app_net.name
  }

  networks_advanced {
    name = docker_network.monitor_net.name
  }
  
  networks_advanced {
    name = docker_network.persistence_net.name
  }

  ports {
    internal = 80
    external = 8082
  }

  volumes {
    host_path      = abspath("${path.module}/ansible/files/index2.html")
    container_path = "/usr/share/nginx/html/index.html"
  }
}

# Tercera aplicacion nginx, expuesta en el puerto 8083
resource "docker_container" "app3" {
  name  = "app3"
  image = var.app_image

  networks_advanced {
    name = docker_network.app_net.name
  }

  networks_advanced {
    name = docker_network.monitor_net.name
  }
  
  networks_advanced {
    name = docker_network.persistence_net.name
  }
  
  ports {
    internal = 80
    external = 8083
  }

  volumes {
    host_path      = abspath("${path.module}/ansible/files/index3.html")
    container_path = "/usr/share/nginx/html/index.html"
  }
}