# Use the official Nginx image
FROM nginx:latest

# Remove the default Nginx web page
RUN rm -rf /usr/share/nginx/html/*

# Copy our website files into Nginx
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
COPY production-aws-environment.png /usr/share/nginx/html/

# Expose port 80
EXPOSE 80