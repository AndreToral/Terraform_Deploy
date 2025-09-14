
# En base a la técnica DRY (Dont Repeat Yourself)
# Se coloca las siguientes imagenes en este archivo
app_image          = "nginx:stable-perl"
redis_image        = "redis:8.2.1"
postgres_image     = "postgres:13-trixie"
grafana_image      = "grafana/grafana:12.2.0-17660687647"

# Conexion a postgreSQL
postgres_user      = "devuser"
postgres_password  = "devpass"
postgres_db        = "devdb"

# Network's name
app_net_name       = "app_net"
persistence_net_name = "persistence_net"
monitor_net_name   = "monitor_net"