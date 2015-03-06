upstream my_project {
  server unix:////tmp/puma.exampleapp.pumatra.sock;
}

server {
  listen 80;
  server_name myproject.com;
  root /home/deploy/myproject.com;

  location / {
    proxy_pass http://my_project;
    proxy_set_header Host $host;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
  }

  location ~* ^/assets/ {
    # Per RFC2616 - 1 year maximum expiry
    expires 1y;
    add_header Cache-Control public;

    # Some browsers still send conditional-GET requests if there's a
    # Last-Modified header or an ETag header even if they haven't
    # reached the expiry date sent in the Expires header.
    add_header Last-Modified "";
    add_header ETag "";
    break;
  }
}