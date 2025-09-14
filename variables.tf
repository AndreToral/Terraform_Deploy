# Variables de la app Nginxs
variable "app_image" {
  description = "Imagen de la aplicación base"
  type        = string
  default = "nginx:stable-perl"
}

# Variables de Databases
variable "redis_image" {
  description = "Imagen de Redis"
  type        = string
  default = "redis:8.2.1"
}

variable "postgres_image" {
  description = "Imagen de PostgreSQL"
  type        = string
  default = "postgres:13-trixie"
}

# Variables de conexion a postgreSQL
variable "postgres_user" {
  description = "Usuario de PostgreSQL"
  type        = string
  default = "devuser"
}

variable "postgres_password" {
  description = "Contraseña de PostgreSQL"
  type        = string
  sensitive   = true
  default = "devpass"
}

variable "postgres_db" {
  description = "Base de datos por defecto"
  type        = string
  default = "devdb"
}

# Variables de redes
variable "app_net_name" {
  description = "Nombre de la red para las apps"
  type        = string
  default = "app_net"
}

variable "persistence_net_name" {
  description = "Nombre de la red para persistencia"
  type        = string
  default = "persistence_net"
}

variable "monitor_net_name" {
  description = "Nombre de la red para monitoreo"
  type        = string
  default = "monitor_net"
}