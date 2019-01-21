var mysql = require("mysql");

var connection;

if (process.env.JAWSDB_URL) {
  connection = mysql.createConnection(process.env.JAWSDB_URL);
} else {
  var connection = mysql.createConnection({
    host: "bbj31ma8tye2kagi.cbetxkdyhwsb.us-east-1.rds.amazonaws.com",
    port: 3306,
    user: "yr89dnv44759n0in",
    password: "vztq2vk3nbl1db0d",
    database: "e2g9ym5tn15bmmxa"
  });
}

connection.connect();
module.exports = connection;
