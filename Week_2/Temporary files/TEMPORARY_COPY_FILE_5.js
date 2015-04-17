function Continent (country, element) {
	this.country = country;
	this.element = element;
}

var countries = {

	france: "food",
	Italy: 'beauty',
	spain: 'fun',
	Germany: 'hard workers',
	UK: 'sophisticated'
}



var america = {

	country: "Mexico",
	population: 20000000,
	info: function(){

		return "this country is " + this.country + " with a population of " + this.population;
	}
}

function USA(state, position, ocean){

	this.state = state;
	this.position = position;
	this.ocean = ocean;
	 }

	my_state = new USA("New Jersey", "North East", "atlantic");

	USA.prototype.info = function  () {
		return "My state is " + this.state + " and is situated on the " + this.position;

	}
	
	USA.prototype.sea = function() {	
		return "My state is " + this.state + " and is situated on the " + this.position + " and the ocean is the " + this.ocean;
	}






