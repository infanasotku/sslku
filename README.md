### Simple ssl generator with certificate exporting to custom volume.

1. src/certbot - simple script
   which generate ssl certificate by `DOMAIN_EMAIL` and `DOMAIN_URL` envs.
2. src/server - server plug for certbot.

#### To run:

```
git clone https://github.com/infanasotku/sslku.git

cd sslku

cat > .env1 << EOF
DOMAIN_EMAIL=example@gmail.com
DOMAIN_URL=example.ru
EOF

docker compose up --abort-on-container-exit
docker compose rm -f
```
