source .env
docker exec -i oracle21 sqlplus $ORACLE_USER/$ORACLE_PASSWORD@XE
