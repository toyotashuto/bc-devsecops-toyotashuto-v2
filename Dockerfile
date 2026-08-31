FROM node:18

WORKDIR /app

COPY ZScalerRootCA.crt /usr/local/share/ca-certificates/

RUN update-ca-certificates

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]