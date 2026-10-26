FROM alpine
RUN apk add --no-cache busybox-extras && mkdir -p /www && echo "Hotel API Active" > /www/index.html
EXPOSE 80
CMD ["sh", "-c", "echo 'Hotel API Active'; busybox-extras httpd -f -p 80 -h /www"]