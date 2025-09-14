output "grafana_url" {
  value = "http://localhost:3000"
}

output "postgres_connection" {
  value = "postgresql://${var.postgres_user}:${var.postgres_password}@localhost:8080/${var.postgres_db}"
  sensitive = true
}