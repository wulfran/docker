cd ..
sudo docker-compose exec db sh -c 'cd /db_dumps && ./importDatabase.sh'