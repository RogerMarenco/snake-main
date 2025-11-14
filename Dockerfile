# Usa una imagen base de Python
FROM python:3.11-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto
COPY index.html .
COPY styles.css .
COPY script.js .

# Expone el puerto 8000
EXPOSE 8000

# Inicia un servidor HTTP simple de Python
CMD ["python", "-m", "http.server", "8000", "--bind", "0.0.0.0"]
