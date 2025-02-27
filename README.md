# Proyecto de Curso - Node.js y Docker

Este proyecto es parte de mi aprendizaje sobre Docker, incluyendo la creación de contenedores y la orquestación con Docker Compose.

## Tecnologías utilizadas
- **Node.js**
- **MongoDB**
- **Docker**
- **Docker Compose**

## Instalación y ejecución

### 1. Clonar el repositorio
```sh
git clone <URL_DEL_REPO>
cd <NOMBRE_DEL_REPO>
```

### 2. Crear el archivo `.env`
Crea un archivo `.env` en la raíz con las siguientes variables de entorno:
```env
MONGO_USER=tu_usuario
MONGO_PASS=tu_contraseña
```

### 3. Construir y levantar los contenedores
Ejecuta el siguiente comando para levantar los servicios:
```sh
docker compose up --build -d
```
Esto iniciará los contenedores en segundo plano.

### 4. Ver logs de la aplicación
```sh
docker compose logs -f
```

### 5. Detener y eliminar los contenedores
```sh
docker compose down
```

## Estructura del Proyecto
```
/
├── src/                # Código fuente de la aplicación
├── Dockerfile          # Configuración del contenedor
├── docker-compose.yml  # Orquestación de servicios
├── .env.example        # Archivo de ejemplo para variables de entorno
├── .gitignore          # Archivos ignorados en Git
├── README.md           # Documentación del proyecto
```

## Notas
- Se recomienda usar `docker compose` en lugar de `docker-compose`.
- Asegúrate de tener Docker y Docker Compose instalados en tu sistema.
- Puedes modificar el `docker-compose.yml` según sea necesario.

¡Feliz aprendizaje con Docker! 🚀


