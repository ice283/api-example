FROM node:lts-bullseye-slim

# Create app directory

WORKDIR /usr/src/app

# Install app dependencies

COPY package*.json ./

RUN npm install -g pnpm 

RUN pnpm install

# Bundle app source

COPY . .

RUN pnpm run build

EXPOSE 3000

CMD ["pnpm", "start"]
