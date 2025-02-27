# Usa una imagen base más ligera
FROM node:18-alpine AS builder

# Establece el directorio de trabajo
WORKDIR /home/app

# Copia solo los archivos de dependencias para optimizar la caché
COPY package*.json ./

# Instala solo las dependencias de producción
RUN npm install --only=production

# Copia el resto del código de la aplicación
COPY . .

# Usa una imagen más ligera para la ejecución final
FROM node:18-alpine AS runner

# Establece el directorio de trabajo
WORKDIR /home/app

# Copia solo las dependencias y el código necesario desde el builder
COPY --from=builder /home/app /home/app

# Usa un usuario no root por seguridad
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

# Expone el puerto de la aplicación
EXPOSE 3000

# Comando de inicio
CMD ["node", "index.js"]
