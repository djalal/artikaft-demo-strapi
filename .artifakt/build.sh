#!/bin/bash

npm run build

cd /var/www/html/node_modules/\@strapi/strapi && npm link

chown -R www-data:www-data /var/www/html/node_modules

