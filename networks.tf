resource "docker_network" "app_net" {
  name = var.app_net_name
}

resource "docker_network" "persistence_net" {
  name = var.persistence_net_name
}

resource "docker_network" "monitor_net" {
  name = var.monitor_net_name
}