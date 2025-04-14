See immich install instructions here: https://immich.app/docs/install/docker-compose



wget -O init.zip https://api.github.com/repos/LTMXcitrus/immich-lemonnier-setup/zipball/main/

# To install certificate for a subdomain
If not already installed, install certbot and nginx
```bash
sudo apt install certbot python3-certbot-nginx
```
Then create certificate for your subdomain
Example:
```bash
sudo certbot --nginx -d photos.lemonnier.io
```