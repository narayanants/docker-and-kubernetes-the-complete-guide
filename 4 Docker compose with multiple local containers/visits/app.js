const express = require("express"),
  redis = require("redis"),
  app = express(),
  client = redis.createClient({
    host: "redis-server",
    port: 6379
  });
client.set("visits", 0);

app.get("/", (req, res) => {
  client.get("visits", (err, visits) => {
    res.send(`No of visits is ${visits}`);
    client.set("visits", parseInt(visits) + 1);
  });
});

app.listen(8081, (req, res) => {
  console.log("Listening on port 8081");
});
