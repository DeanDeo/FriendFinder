
var connection = require("./connection.js");
var totalDifference = 0

// ===============================================================================
// ROUTING
// ===============================================================================

module.exports = function(app) {
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
    var friendFound = {
      name: "",
      photo:"",
      friendDifference: 1000
    };
    var friendInput = req.body;
    var friendName = friendInput.name;
    var friendPhoto = friendInput.photo;
    var friendScores = friendInput.scores;
    var totalDifference = 0;

    for (var i = 0; i < [friends].length - 1; i++) {
      console.log(friends[i].name);
      totalDifference = 0;

    for (var h = 0; h < 10; h++){
      totalDifference += Math.abs(
        parseInt(friendScores[h]) - parseInt(friends[i].scores[h])
      );

      if (totalDifference <= friendFound.friendDifference){
        friendFound.name = friends[i].name;
      friendFound.photo = friends[i].photo;
    friendFound.friendDifference = totalDifference; 
      }
    }
  }

  friends.psuh(friendInput);


    res.json(friendFound);
  });
};
