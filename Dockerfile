# 1️⃣ Base image (the operating system + Node)
FROM node:20-alpine

# 2️⃣ Set working directory inside container
WORKDIR /app

# 3️⃣ Copy our project files into container
COPY . .

# 4️⃣ Install a small web server
RUN npm install -g serve

# 5️⃣ Tell Docker which port the app uses
EXPOSE 5000

# 6️⃣ Command to start the app
CMD ["serve", "-s", "public", "-l", "5000"]
