upstream PROJECTNAME {
  server unix:////tmp/puma.PROJECTNAME.pumatra.sock;
}

server {
  listen 80;
  server_name PROJECTNAME.com www.PROJECTNAME.com;
  root /var/www/PROJECTNAME.com;

  location / {
    proxy_pass http://PROJECTNAME;
    proxy_set_header Host $host;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
  }

  location ~* ^/assets/ {
    expires 1y;
    add_header Cache-Control public;
    add_header Last-Modified "";
    add_header ETag "";
    break;
  }
}