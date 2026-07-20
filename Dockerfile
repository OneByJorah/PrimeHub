FROM nginx:alpine

# Copy static files
COPY dashboard.html /usr/share/nginx/html/index.html
COPY docs/ /usr/share/nginx/html/docs/
COPY repositories.json /usr/share/nginx/html/repositories.json
COPY j1.yaml /usr/share/nginx/html/j1.yaml

# Custom nginx config for SPA-like behavior
RUN { \
    echo 'server {'; \
    echo '    listen 80;'; \
    echo '    root /usr/share/nginx/html;'; \
    echo '    index index.html;'; \
    echo '    location / {'; \
    echo '        try_files $uri $uri/ /index.html;'; \
    echo '    }'; \
    echo '    location ~* \.(js|css|png|jpg|jpeg|gif|ico|svg|webp)$ {'; \
    echo '        expires 1y;'; \
    echo '        add_header Cache-Control "public, immutable";'; \
    echo '    }'; \
    echo '}'; \
} > /etc/nginx/conf.d/default.conf

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --retries=3 --start-period=5s \
  CMD wget --spider -q http://localhost:80/ || exit 1

CMD ["nginx", "-g", "daemon off;"]
