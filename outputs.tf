# Direccion de acceso a Grafana
output "grafana_url" {
  value = "http://localhost:3000"
}

# Cadena de conexión a PostgreSQL
output "postgres_connection" {
  value = "postgresql://${var.postgres_user}:${var.postgres_password}@localhost:6000/${var.postgres_db}"
  sensitive = true    # Se marca como sensible para proteger credenciales
}