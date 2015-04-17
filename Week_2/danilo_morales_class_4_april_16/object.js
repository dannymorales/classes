// function Continent (countries, element) {
// 	this.countries = countries;
// 	this.element = element;
// }

// var countries = {

// 	france: "food",
// 	Italy: 'beauty',
// 	spain: 'fun',
// 	Germany: 'hard workers',
// 	UK: 'sophisticated'
// }



// var america = {

// 	country: "Mexico",
// 	population: 20000000,
// 	info: function(){

// 		return "this country is " + this.country + " with a population of " + this.population;
// 	}
// }

// function USA(state, position, ocean){

// 	this.state = state;
// 	this.position = position;
// 	this.ocean = ocean;
// 	 }

// 	my_state = new USA("New Jersey", "North East", "atlantic");

// 	USA.prototype.info = function  () {
// 		return "My state is " + this.state + " and is situated on the " + this.position;

// 	}
	
// 	USA.prototype.sea = function() {	
// 		return "My state is " + this.state + " and is situated on the " + this.position + " and the ocean is the " + this.ocean;
// 	}


function User(fname, lname, email) {
	this.fname = fname;
	this.lname = lname;
	this.email = email;
	this.name = function() {
		return this.fname + " " + this.lname;
	}
	// User.prototype.name = function() {
	// 	return this.fname + " " + this.lname;
	// 	}	
	
}
function Admin () {
	User.apply(this, arguments);
	this.admin = true; 
}
Admin.prototype = new User();

var me = new Admin("danilo", "Morales", "danny@gadaproductions.com")

Admin.prototype.result = function() {
	return "Your name: " + me.name() + " " + "Your email: " + this.email;
}
