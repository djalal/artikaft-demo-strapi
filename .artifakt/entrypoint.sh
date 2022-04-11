#!/bin/bash

persistent_folder=src
echo Mount $persistent_folder directory
cp -ur /var/www/html/$persistent_folder/* /data/$persistent_folder || true
rm -rf /var/www/html/$persistent_folder && \
  mkdir -p /data/$persistent_folder && \
  ln -sfn /data/$persistent_folder /var/www/html/$persistent_folder && \
  chown -h www-data:www-data /var/www/html/$persistent_folder /data/$persistent_folder

