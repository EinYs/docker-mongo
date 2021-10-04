#init/setup.sh 
echo "Set replication..." 
mongo -u ${MONGO_INITDB_ROOT_USERNAME} -p ${MONGO_INITDB_ROOT_PASSWORD} mongodb://localhost:27017 /usr/src/configs/init/setReplication.js


