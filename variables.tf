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