sudo -u www-data php /var/www/nextcloud/occ maintenance:mode --on

sudo -u www-data tar -cpzf /data_4TB/bkp/nc/ncserver_`date +"%w"`.tar.gz -C /var/www/nextcloud .

# Benutzer=root
mysqldump --single-transaction -h localhost -uroot -p nextcloud > /data_4TB/bkp/nc/ncdb_`date +"%w"`.sql

tar -cpzf /data_4TB/bkp/nc/ncdata_`date +"%w"`.tar.gz -C /data_4TB/nc_data/ .

sudo -u www-data php /var/www/nextcloud/occ maintenance:mode --off
