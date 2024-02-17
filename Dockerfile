# Use the official Nginx image as base
FROM nginx

# Copy the HTML file from the host into the container
COPY . /usr/share/nginx/html/

# Expose port 80 to the Docker host, so external clients can access the web server
EXPOSE 80

# Command to run the Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]
