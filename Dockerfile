# Empesamos desde una imagen de node.
FROM node:10

# Copia los archivos importantes para el
# build
COPY ["package.json", "package-lock.json",  "/usr/src/"]

# Es como un cd
WORKDIR /usr/src

# Instalar dependencias node
RUN npm install

# Copia del contexto de build
COPY [".", "/usr/src/"]

# Espone el puerto 3000
EXPOSE 3000

# Comando de arranque de la imagen
#CMD ["node", "index.js"]
CMD ["npx", "nodemon", "index.js"]