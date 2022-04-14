#!/bin/bash

persistent_folder=src
echo Mount $persistent_folder directory
mkdir -p /data/$persistent_folder
cp -ur /var/www/html/$persistent_folder/* /data/$persistent_folder || true
rm -rf /var/www/html/$persistent_folder && \
  ln -sfn /data/$persistent_folder /var/www/html/$persistent_folder && \
  chown -h www-data:www-data /var/www/html/$persistent_folder /data/$persistent_folder

persistent_folder=public/uploads
echo Mount $persistent_folder directory
mkdir -p /data/$persistent_folder
cp -ur /var/www/html/$persistent_folder/* /data/$persistent_folder || true
rm -rf /var/www/html/$persistent_folder && \
  ln -sfn /data/$persistent_folder /var/www/html/$persistent_folder && \
  chown -h www-data:www-data /var/www/html/$persistent_folder /data/$persistent_folder

cd /data/$persistent_folder && npm link @strapi/strapi && cd /var/www/html
