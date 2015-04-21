name = danny
def my_name
	puts "your name is " + my_name
	
end

holidays = ["christmas", "hanukah", "presidents day", "independence day"]



my_hash = {"name" => "danny", "gender" => "male", "age" => 39}

my_symbol_hash = {:name => "danny"; :gender => "male", :age => 39}

my_alt_hash = {name: "danny", gender: "male", age: 39}

my_hash["name"]

my_symbol_hash[:name]

my_alt_hash[:name] #important here=>> the : has to be at the beginning not the end like my_alt_hash"


my_hash["location"] = "brooklyn"

#This will add "brooklyn" to the array

my_hash.keys