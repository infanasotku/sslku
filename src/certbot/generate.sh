#!/bin/bash
# generate.sh

rm -rf /etc/letsencrypt/live/certfolder*

certbot certonly --standalone --email $DOMAIN_EMAIL -d $DOMAIN_URL --cert-name=certfolder --key-type rsa --agree-tos

rm -rf /etc/nginx/cert.pem
rm -rf /etc/nginx/key.pem

cp /etc/letsencrypt/live/certfolder*/fullchain.pem /etc/cert/cert.pem
cp /etc/letsencrypt/live/certfolder*/privkey.pem /etc/cert/key.pem