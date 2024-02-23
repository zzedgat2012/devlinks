# Use the Nginx image from Docker Hub as the base image
FROM nginx:alpine

# Copy the content of your site into the default Nginx serve directory
COPY . /usr/share/nginx/html

# Expose port 8080 (Cloud Run requires applications to listen on this port)
EXPOSE 8080

# Start Nginx when the container has provisioned. Use port 8080.
CMD ["nginx", "-g", "daemon off;"]
