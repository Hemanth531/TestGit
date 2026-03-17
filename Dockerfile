# Use lightweight nginx web server
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*


# Copy your nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your web content
COPY . /usr/share/nginx/html


# Expose port (Cloud Run uses 8080)
EXPOSE 8080

# Run nginx on port 8080 instead of default 80
CMD ["nginx", "-g", "daemon off;"]
