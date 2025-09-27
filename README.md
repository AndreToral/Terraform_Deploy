# 🚀 Entorno DEV con Terraform + Docker

## Integrantes:
- Gallardo Diaz, Alexander
- Pulido Torres, Josue
- Rodriguez Toral, Jhon
- Vereau Esteves, Brigitte

Este proyecto despliega un **entorno de desarrollo (DEV)** usando **Terraform** y **Docker**.

Tambien implementa un entorno de aplicaciones Docker con **Terraform** y **Ansible**, donde se despliegan tres aplicaciones basadas en NGINX y un **proxy inverso NGINX** que actúa como **balanceador de carga Round Robin**.

## 📦 Servicios incluidos
- 3 Apps (Nginx)
- Proxy inverso (Nginx, puerto 8000)
- Redis
- PostgreSQL
- Grafana (puerto 3000)

Todo el despliegue está contenido en código y versionado en este repositorio.

## 📂 Estructura del proyecto

```bash
Terraform_Deploy/
├── ansible/
├── 📂 files/
│ │ └── index.html # Página web estática
│ ├── 📂 templates/
│ │ └── nginx.conf          # Configuración del proxy NGINX
│ ├── inventory.ini         # Inventario de Ansible
│ └── playbook.yaml         # Playbook para configurar proxy y web              
├── apps.tf                 # Aplicaciones dummy basadas en nginx
├── database.tf             # Bases de datos PostgreSQL y Redis
├── main.tf                 # Configuración principal
├── monitoring.tf           # Servicio de Grafana
├── networks.tf             # Redes de Docker
├── apps.tf                 # Aplicaciones dummy basadas en nginx
├── database.tf             # Bases de datos PostgreSQL y Redis
├── main.tf                 # Configuración principal
├── monitoring.tf           # Servicio de Grafana
├── networks.tf             # Redes de Docker
├── outputs.tf              # Salidas útiles (ej: conexión a la DB)
├── terraform.tfvars        # Valores por defecto de las variables
└── variables.tf            # Variables reutilizables
```

## 🔧 Requisitos
Antes de comenzar, asegúrate de tener:
- Docker instalado
- Terraform >= 1.5
- Git

# 🚀 Instrucciones de despliegue
## 1. Clonar el repositorio

```bash
git clone https://github.com/AndreToral/Terraform_Deploy.git
cd Terraform_Deploy
```

## 2. Inicializar Terraform

```bash
terraform init
```

## 3. Revisar las variables

Puedes personalizar ```terraform.tfvars``` para definir usuario/contraseña de PostgreSQL, etc.

## 4. Aplicar el despliegue

```bash
terraform apply -auto-approve
```

## 5. Ver salidas útiles

```bash
terraform output
```

## 6. Acceder a los servicios
- Grafana: http://localhost:3000
- Usuario_Grafana: ```admin``` | Password: ```admin```
- Apps: disponibles en los puertos configurados en ```apps.tf```

## 7. 🌍 Validación (Balanceador)

## 7.1. Configurar proxy y página web en Ansible
```bash
cd ../ansible
ansible-playbook -i inventory.ini playbook.yaml
```

## 7.2. Acceder a la web estática:
```bash
curl http://localhost:8080/web
```
Muestra ```Bienvenidos al Laboratorio N°4```

## 7.3. Acceder al backend balanceado:

```bash
curl http://localhost:8080/api
```
Responde en round robin:
```bash
Hola Mundo 1
Hola Mundo 2
Hola Mundo 3
```

# 🧹 Destruir el entorno
Cuando ya no necesites el entorno de desarrollo, simplemente ejecuta:

```bash
terraform destroy -auto-approve
```

# 📝 Convenciones de commits
Este proyecto sigue la Conventional Commits para mantener un historial limpio:
- ```feat:``` ➝ Nueva funcionalidad (ej: ```feat(apps): agregar App1 conectada a PostgreSQL```)
- ```fix:``` ➝ Corrección de errores
- ```chore:``` ➝ Cambios menores o mantenimiento
- ```docs:``` ➝ Documentación
- ```refactor:``` ➝ Refactorización de código sin cambio funcional
- ```style:``` ➝ Cambios de formato (no afectan lógica)
- ```test:``` ➝ Añadir o modificar pruebas

# 📌 Arquitectura
La siguiente imagen representa la arquitectura del entorno desplegado:
<img width="772" height="575" alt="Image" src="https://github.com/user-attachments/assets/341f6b2d-ef8b-4810-be49-4ecda438403a" />
