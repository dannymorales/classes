class Animal

	# attr_reader :legs
	# attr_writer :legs

	# YOU CAN DO EITHER THE ONE ABOVE OR THE ONE BELOW. THE ONE BELOW IS LIKE THE ONE ABOVE COMBINED

	attr_accessor :legs, :name, :weight

	def initialize(name)
		@name = name
	end
	
	def walk
		puts "walking around"
	end

	def speak
		puts "hello. how are you"
	end

	# def legs
	# 	@legs
	# end

	# def legs=(legs)
	# 	@legs = legs
	# end
end



class Dog < Animal
	def speak
		puts "woof. woof!"
	end
	
end