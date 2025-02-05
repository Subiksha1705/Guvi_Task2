# Use the official Nginx image
FROM nginx:latest

# Remove the default Nginx index file

# Copy your HTML file to Nginx's web root as index.html
COPY app.html /usr/share/nginx/html/app.html

# Expose port 80 (internal to the container)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
