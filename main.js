var faker = require("faker");

function generateTenant() {
	return "('" + faker.name.firstName() + " " + faker.name.lastName() + "', " + i +")";
}

for (var i = 1; i <= 116; i++) {
	console.log(generateTenant());
}