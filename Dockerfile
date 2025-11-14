FROM nginx:alpine

# Copia todo el contenido del contexto de construcción al directorio de nginx
COPY . /usr/share/nginx/html

# Expone el puerto 80 (puerto interno del contenedor)
EXPOSE 80

# Ejecuta nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
