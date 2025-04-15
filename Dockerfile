FROM ubuntu:latest

# Prevent interactive prompts (especially for tzdata)
ENV DEBIAN_FRONTEND=noninteractive

# Install Apache and PHP
RUN apt-get update && \
    apt-get install -y apache2 php libapache2-mod-php && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy website files to Apache root
COPY . /var/www/html/

# Expose port 80
EXPOSE 80

# Use JSON form for ENTRYPOINT to avoid signal issues (fixes warning)
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
