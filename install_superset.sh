#!/bin/bash
sudo apt update -qq
sudo apt install -y python3 python3-pip
sudo apt-get install -y  -qq build-essential libssl-dev libffi-dev libsasl2-dev libldap2-dev
sudo pip3 install pandas==0.23.4 SQLAlchemy==1.2.2 psycopg2-binary pymssql superset 
export SUPERSET_CONFIG_PATH=/home/ubuntu/superset_config.py
export FLASK_APP=superset
flask fab create-admin  --username admin --password admin --firstname admin --lastname admin --email admin@gma.com
superset db upgrade 
superset init
nohup superset runserver -p 8080 > /dev/null &