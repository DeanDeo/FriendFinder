var connection = require("./connection.js");
var totalDifference = 0;
var friends = [];

// ===============================================================================
// ROUTING
// ===============================================================================

module.exports = function(app) {
  app.get("/api/friends", function(req, res) {
    res.json(tableData);
  });

  app.post("/api/friends", function(req, res) {
    var friendFound = {
      name: "",
      photo: "",
      friendDifference: 1000
    };
    var friendInput = req.body;
    var friendScores = friendInput.scores;
    // var totalDifference = 0;

    for (var i = 0; i < [friends].length - 1; i++) {
      console.log(friends[i].name);
      totalDifference = 0;

      for (var h = 0; h < 10; h++) {
        totalDifference += Math.abs(
          parseInt(friendScores[h]) - parseInt(friends[i].scores[h])
        );

        if (totalDifference <= friendFound.friendDifference) {
          friendFound.name = friends[i].name;
          friendFound.photo = friends[i].photo;
          friendFound.friendDifference = totalDifference;
        }
      }
    }

    friends.push(friendInput);

    res.json(friendFound);
  });
};
