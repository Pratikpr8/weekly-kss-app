FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD npm run dev


# FROM node:18-alpine instructs Docker to use a lightweight Linux distribution with Node.js version 18 installed. You can choose a different OS image from Docker Hub if you prefer.

# WORKDIR /app sets the working directory inside the container to /app.

# COPY package*.json ./ copies the package.json file into the working directory.

# RUN npm install installs all the dependencies for your project.

# COPY . . copies all the files from the current directory into the working directory of the container. You can utilize a .dockerignore file to exclude specific files from being copied.

# EXPOSE 3000 exposes port 3000 from the container to the local network.

# CMD npm run dev starts the development server inside the container.