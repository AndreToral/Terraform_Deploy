# Contenedor de Redis
resource "docker_container" "redis" {
  name  = "redis"
  image = var.redis_image

  # Conexion a la red persistencia (persistence_net)
  networks_advanced {
    name = docker_network.persistence_net.name
  }

  ports {
    internal = 6379
    external = 6379
  }
}

# Contenedor de PostgreSQL
resource "docker_container" "postgres" {
  name  = "postgres"
  image = var.postgres_image
  
  # Variables de entorno para inicializar usuario, password y DB
  env = [
    "POSTGRES_USER=${var.postgres_user}",
    "POSTGRES_PASSWORD=${var.postgres_password}",
    "POSTGRES_DB=${var.postgres_db}"
  ]

  networks_advanced {
    name = docker_network.persistence_net.name
  }

  ports {
    internal = 5432
    external = 6000
  }
}