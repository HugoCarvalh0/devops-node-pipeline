# Imagem base oficial do Node
FROM node:18

# Diretório de trabalho dentro da imagem
WORKDIR /devops

# Copia os arquivos de dependências
COPY package*.json ./

# Instala dependências
RUN npm install

# Copia o restante do código para dentro da imagem
COPY . .

# Expõe a porta da aplicação
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "server.js"]
