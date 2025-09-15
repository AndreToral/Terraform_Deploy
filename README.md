# 🚀 Entorno DEV con Terraform + Docker

## Integrantes:
- Gallardo Diaz, Alexander
- Pulido Torres, Josue
- Rodriguez Toral, Jhon
- Vereau Esteves, Brigitte

Este proyecto despliega un **entorno de desarrollo (DEV)** usando **Terraform** y **Docker**.

## 📦 Servicios incluidos
- 3 Apps (Nginx)
- Redis
- PostgreSQL
- Grafana (puerto 3000)

Todo el despliegue está contenido en código y versionado en este repositorio.

## 📂 Estructura del proyecto

```bash
.
├── apps.tf                # Aplicaciones dummy basadas en nginx
├── database.tf            # Bases de datos PostgreSQL y Redis
├── main.tf                # Configuración principal
├── monitoring.tf          # Servicio de Grafana
├── networks.tf            # Redes de Docker
├── outputs.tf             # Salidas útiles (ej: conexión a la DB)
├── terraform.tfvars       # Valores por defecto de las variables
└── variables.tf           # Variables reutilizables
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

Puedes personalizar ```terraform.tfvars``` para definir usuario/contraseña de PostgreSQL, puertos, etc.

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
