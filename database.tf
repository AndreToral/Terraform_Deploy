resource "docker_container" "redis" {
  name  = "redis"
  image = var.redis_image
  networks_advanced {
    name = docker_network.persistence_net.name
  }
}

resource "docker_container" "postgres" {
  name  = "postgres"
  image = var.postgres_image
  env = [
    "POSTGRES_USER=${var.postgres_user}",
    "POSTGRES_PASSWORD=${var.postgres_password}",
    "POSTGRES_DB=${var.postgres_db}"
  ]
  networks_advanced {
    name = docker_network.persistence_net.name
  }
}