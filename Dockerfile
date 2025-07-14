# Etapa base
FROM node:20-alpine

# Crear directorio de trabajo
WORKDIR /app

# Copiar archivos
COPY package*.json ./
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto del servidor Angular
EXPOSE 4200

# Comando para desarrollo
CMD ["npm", "start"]
