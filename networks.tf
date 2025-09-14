##########################################
#   Definicion de redes de aislamiento   #
##########################################

# Red para las aplicaciones (app1, app2, app3)
resource "docker_network" "app_net" {
  name = var.app_net_name
}

# Red para las bases de datos (Redis y PostgreSQL)
resource "docker_network" "persistence_net" {
  name = var.persistence_net_name
}

# Red para el monitoreo (Grafana)
resource "docker_network" "monitor_net" {
  name = var.monitor_net_name
}