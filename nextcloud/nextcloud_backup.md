sudo -u www-data php /var/www/nextcloud/occ maintenance:mode --on

sudo -u www-data tar -cpzf /data_4TB/bkp/nc/ncserver_`date +"%y%m%d_%H%M"`.tar.gz -C /var/www/nextcloud .
# Benutzer=root

mysqldump --single-transaction -h localhost -uroot -p nextcloud > /data_4TB/bkp/nc/ncdb_`date +"%y%m%d_%H%M"`.sql

tar -cpzf /data_4TB/bkp/nc/ncdata_`date +"%y%m%d_%H%M"`.tar.gz -C /data_4TB/nc_data/ .

sudo -u www-data php /var/www/nextcloud/occ maintenance:mode --off


docker exec -u 33 nc_app ./occ maintenance:mode --on
docker exec -u mysql nc_db mysqldump --single-transaction -h localhost -u root --password=password nextcloud > /data_4TB/bkp/duplicati/nextcloud-db/nc_db_bkp.sql
docker exec -u 33 nc_app ./occ maintenance:mode --off