#!/bin/bash
mysql -u root -proot -e 'DROP DATABASE IF EXISTS wordpress; CREATE DATABASE wordpress'
mysql -u root -proot wordpress < ./db_dump.sql