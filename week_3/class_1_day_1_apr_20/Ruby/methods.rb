def say_hello
	puts "Hello World!"
end

name = "danny"
def say_name(name)
	puts "Hello " + name + "."
end

def formal_greeting(first_name,last_name)
	puts "hello #{first_name}."
	puts "your last name is #{last_name}"
end	
# say_hello
# say_name(name)
formal_greeting("danny", "morales")