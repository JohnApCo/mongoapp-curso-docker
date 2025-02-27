# MongoApp - Curso Docker

Este proyecto es parte de mi aprendizaje sobre Docker, desde la creación de contenedores hasta la orquestación con Docker Compose.

## Tecnologías utilizadas
- **Node.js**
- **Express.js**
- **MongoDB**
- **Docker & Docker Compose**

## Estructura del proyecto
```
├── .vscode/                 # Configuración de VSCode
├── node_modules/            # Dependencias de Node.js
├── .env                     # Variables de entorno (no incluir en el repo)
├── .env.example             # Ejemplo de variables de entorno
├── .gitignore               # Archivos y carpetas ignoradas por Git
├── docker-compose-dev.yml    # Configuración para desarrollo con Docker Compose
├── docker-compose.yml        # Configuración principal con Docker Compose
├── Dockerfile                # Dockerfile para producción
├── Dockerfile.dev            # Dockerfile para desarrollo
├── index.js                  # Archivo principal del servidor
├── package-lock.json         # Bloqueo de versiones de paquetes
├── package.json              # Configuración del proyecto y dependencias
├── README.md                 # Documentación del proyecto
├── Resume.md                 # Archivo adicional
```

## Instalación y Uso
### 1. Clonar el repositorio
```sh
git clone https://github.com/tu-usuario/mongoapp-curso-docker.git
cd mongoapp-curso-docker
```

### 2. Configurar variables de entorno
Copia el archivo `.env.example` y renómbralo a `.env`, luego edita los valores según sea necesario.
```sh
cp .env.example .env
```

### 3. Construir y levantar los contenedores
Para desarrollo:
```sh
docker compose -f docker-compose-dev.yml up --build
```
Para producción:
```sh
docker compose up --build -d
```

### 4. Acceder a la aplicación
La aplicación se ejecutará en `http://localhost:3000`

## Comandos útiles
- Detener los contenedores:
  ```sh
  docker compose down
  ```
- Ver logs:
  ```sh
  docker compose logs -f
  ```
- Inspeccionar contenedores en ejecución:
  ```sh
  docker ps
  ```

## Notas
- Asegúrate de tener Docker y Docker Compose instalados antes de ejecutar los comandos.
- Revisa los archivos Dockerfile y docker-compose.yml para entender la configuración.

---
_Proyecto realizado como parte de mi aprendizaje sobre Docker y contenedores._

