# Variables de la app Nginxs
variable "app_image" {
  description = "Imagen de la aplicación base"
  type        = string
}

# Variables de Databases
variable "redis_image" {
  description = "Imagen de Redis"
  type        = string
}

variable "postgres_image" {
  description = "Imagen de PostgreSQL"
  type        = string
}

# Variable de monitoreo
variable "grafana_image" {
  description = "Imagen de Grafana"
  type        = string
}

# Variables de conexion a postgreSQL
variable "postgres_user" {
  description = "Usuario de PostgreSQL"
  type        = string
}

variable "postgres_password" {
  description = "Contraseña de PostgreSQL"
  type        = string
  sensitive   = true
}

variable "postgres_db" {
  description = "Base de datos por defecto"
  type        = string
}

# Variables de redes
variable "app_net_name" {
  description = "Nombre de la red para las apps"
  type        = string
}

variable "persistence_net_name" {
  description = "Nombre de la red para persistencia"
  type        = string
}

variable "monitor_net_name" {
  description = "Nombre de la red para monitoreo"
  type        = string
}