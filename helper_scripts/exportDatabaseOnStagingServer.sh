# WARNING! Just use it for copy/paste in staging console
HOSTNAME='hostname.com';
DBNAME='database';
USERNAME='root';
PASSWORD='root';
EXPORT_FILE_NAME='stage_db';
CURRENT_DATE=$(date +%F);
echo "mysqldump -u ${USERNAME} -p${PASSWORD} -h ${HOSTNAME}  --single-transaction --quick ${DBNAME} > ${EXPORT_FILE_NAME}_${CURRENT_DATE}.sql"
