
var d3 = require("d3");
var topojson = require("topojson");

d3.json("http://bl.ocks.org/herrstucki/raw/4327678/aa6f466b7600651bd57838ca70b72ce07e79165d/ch.json", function(error, cantons_communes) {
  console.log(error);
  console.log(cantons_communes);
  var neighbors = topojson.neighbors(cantons_communes.objects.municipalities.geometries);
  console.log(neighbors);

  var fs = require('fs');
  fs.writeFile("neighbors.json", JSON.stringify(neighbors), function(err) {
      if(err) {
          return console.log(err);
      }

      console.log("The file was saved!");
  });
});
