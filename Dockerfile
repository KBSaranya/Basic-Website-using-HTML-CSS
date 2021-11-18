FROM ubuntu:16.04
		MAINTAINER "info@gamutgurus.com"
		RUN apt-get update
		RUN apt-get install -y nginx
		COPY index.html /var/www/html
		COPY img /var/www/html
		COPY style.css /var/www/html
		ENTRYPOINT service nginx start && bash
