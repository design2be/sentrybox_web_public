FROM httpd:2.4-alpine

# Copy your site (index.html in project root)
COPY . /usr/local/apache2/htdocs/

# Ensure WebP MIME type is served correctly
RUN printf "\nAddType image/webp .webp\n" >> /usr/local/apache2/conf/httpd.conf
