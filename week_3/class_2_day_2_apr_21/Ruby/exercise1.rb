class Categories
	
	attr_accessor :id, :residential, :type

	
	
	def initialize(id, name, type)
		@@cat_id = id
		@cat_name = name
		@cat_type = type
	end

	def residential
		puts "residential buildings are #{@cat_name}"
		
	end

	def size
		puts "building sizes are #{@cat_type}"
	end
	
end


cat1 = Categories.new(1, "Houses", "small")
cat2 = Categories.new(2, "building", "big")
