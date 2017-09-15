#!/usr/bin/env bash

echo "window.backendUrl = '$BACKEND_URL';" > /usr/local/apache2/htdocs/backendUrl.js

httpd-foreground
