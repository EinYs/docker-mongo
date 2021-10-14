// init/ 
config = { _id: "rs1", 
    members: 
    [{ _id: 0, host: "rs0.cocoice.icu:27017" }, 
    { _id: 1, host: "rs1.cocoice.icu:27017" }, 
    { _id: 2, host: "rs2.cocoice.icu:27017", "arbiterOnly": true}] // "arbiterOnly": true 
}
rs.initiate(config);
rs.conf();
