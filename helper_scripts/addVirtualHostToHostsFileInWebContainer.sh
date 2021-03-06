#!/bin/bash
# this script allows you to connect to the niels.localhost from inside of 'web' container
# for example using: curl http://niels.localhost
cd ..
sudo docker-compose exec web sh -c 'echo -e "\n" >> /etc/hosts && echo "127.0.0.1 conversio.localhost" >> /etc/hosts'
