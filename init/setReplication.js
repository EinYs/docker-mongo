// init/ 
config = { _id: "rs1", 
    members: 
    [{ _id: 0, host: "host1:27017" }, 
    { _id: 1, host: "host2:27017" }, 
    { _id: 2, host: "host3:27017"}] // "arbiterOnly": true 
}
rs.initiate(config);
rs.conf();
