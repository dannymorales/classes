class Zoo

	def initialize(event, type, name)
		@event = event
		@type = type
		@name = name
	end

	attr_reader :event, :type, :name

	attr_writer :event, :type, :name

	event1 = Zoo.new("exhibit", "Felines", "Snow leopards")

	
	puts event1.event
	puts event1.type

	

end



# class Animal

# 	def initialize(name, type, size, color, weight)
# 		@name = name
# 		@type = type
# 		@size = size
# 		@color = color

		
# 	end
	
# end