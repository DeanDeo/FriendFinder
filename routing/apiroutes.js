// ===============================================================================
// LOAD DATA
// We are linking our routes to a series of "data" sources.
// These data sources hold arrays of information on table-data, waitinglist, etc.
// ===============================================================================

// var friends = require("../data/friends");
var mysql = require("mysql");

var connection;
if (process.env.JAWSDB_URL) {
  connection = mysql.createConnection(process.env.JAWSDB_URL);
} else {
  var connection = mysql.createConnection({
    host: "localhost",
    port: 3307,
    user: "root",
    password: "root",
    database: "friends"
  });
}

connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    //once successfully connected, you may want to query your database for the info you'll need later!
  }
});

function loadProfiles() {
  // Selects all of the data from the MySQL profiles table
  connection.query("SELECT * FROM profiles", function(err, res) {
    if (err) throw err;
    //a fun trick for converting mysql's returned 'rowPacketData' obj into more usable JSON
    var data = JSON.stringify(res);
    data = JSON.parse(data);
    // loop over your data converting the string of numbers into an array (using split??)
    friends = data;
  });
}

// ===============================================================================
// ROUTING
// ===============================================================================

module.exports = function(app) {
  // API GET Requests
  // Below code handles when users "visit" a page.
  // In each of the below cases when a user visits a link
  // (ex: localhost:PORT/api/admin... they are shown a JSON of the data in the table)
  // ---------------------------------------------------------------------------

  app.get("/api/friends", function(req, res) {
    res.json(tableData);
  });

  // API POST Requests
  // Below code handles when a user submits a form and thus submits data to the server.
  // In each of the below cases, when a user submits form data (a JSON object)
  // ...the JSON is pushed to the appropriate JavaScript array

  app.post("/api/friends", function(req, res) {
    // Note the code here. Our "server" will respond to requests and let users know if they have a table or not.
    // It will do this by sending out the value "true" have a table
    // req.body is available since we're using the body parsing middleware
    if (friends.length < 5) {
      tableData.push(req.body);
      res.json(true);
    } else {
      waitListData.push(req.body);
      res.json(false);
    }
  });

  // ---------------------------------------------------------------------------
  // I added this below code so you could clear out the table while working with the functionality.
  // Don"t worry about it!

  app.post("/api/clear", function(req, res) {
    // Empty out the arrays of data
    friends.length = [];

    res.json({ ok: true });
  });
};
