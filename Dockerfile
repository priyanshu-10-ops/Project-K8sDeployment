FROM node AS build
WORKDIR /app
# Copy package.json and package-lock.json first and then install all the dependencies (Best practice)
COPY package*.json ./
RUN npm install
# Copy the rest and build it
COPY . .
RUN npm run build

FROM nginx 
COPY --from=build /app/dist /usr/share/nginx/html     
CMD ["nginx", "-g", "daemon off;"]