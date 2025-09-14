resource "docker_container" "app1" {
  name  = "app1"
  image = var.app_image
  networks_advanced {
    name = docker_network.app_net.name
  }
}

resource "docker_container" "app2" {
  name  = "app2"
  image = var.app_image
  networks_advanced {
    name = docker_network.app_net.name
  }
}

resource "docker_container" "app3" {
  name  = "app3"
  image = var.app_image
  networks_advanced {
    name = docker_network.app_net.name
  }
}