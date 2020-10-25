# If any of those subdomains cause any trouble, just drop this subdomain and relaunch

./acme.sh --issue -d totti-web.de -d iot.totti-web.de -d cloud.totti-web.de -d pass.totti-web.de -d home.totti-web.de -d matrix.totti-web.de -d pics.totti-web.de -d vpn.totti-web.de -d docs.totti-web.de -d office.totti-web.de --keylength 4096 -w /var/www/letsencrypt --key-file /etc/letsencrypt/rsa-certs/privkey.pem --ca-file /etc/letsencrypt/rsa-certs/chain.pem --cert-file /etc/letsencrypt/rsa-certs/cert.pem --fullchain-file /etc/letsencrypt/rsa-certs/fullchain.pem --debug

