def age_checker(age)
	# puts "the age is: #{age}"	
	if age == 21 
		puts "welcome to attitudes. have a freebie at the bar."
	elsif age > 21
		puts "welcome to attitudes. have a great time."
	else
		puts "sorry you are too young but we like your attitude."
	end
	# check the persons age
	# if they are 21 or oder let them in
	# otherwise don't let them in
end

# age_checker(19)
# age_checker(21)
# age_checker(34)

print "please enter your age"

age = gets.to_i
age_checker(age)



