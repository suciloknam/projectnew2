# Use the official NGINX image as the base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default nginx content
RUN rm -rf ./*

# Copy website files to the nginx HTML directory
COPY . /usr/share/nginx/html/

# Expose port 80 to serve the website
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
