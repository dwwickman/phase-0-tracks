var colors = ["blue", "red", "green", "yellow"]
var names = ["Ed", "Star", "Pegasus", "Sky"]

colors.push("pink");
names.push("Blue Ribbon");

horse = {};

for (var i = 0; i < colors.length; i++) {
	horse[names[i]] = colors[i];
}

//console.log(horse);