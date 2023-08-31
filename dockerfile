from node:v18.17.1 as builder
workdir /app
copy package*jason .
copy npm*.lock .
RUN npm install
copy . .
cmd ["npm";"start"]
