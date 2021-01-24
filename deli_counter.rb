# Write your code here.
# katz_deli = []
# line(katz_deli)
#    def take_a_number(katz_deli, name) 
# katz_deli.push ("#{name}")
# now_serving(katz_deli)
# return ("Welcome, #{name}. You are number #{katz_deli.length} in line.")
#    end 

katz_deli = []

def line(katz_deli)
	
	if katz_deli.empty?
		puts "The line is currently empty."
	else
	
		line = "The line is currently:"
		katz_deli.each_with_index do |val, index|
			line += " #{index +1}. #{val}"

		end
		puts line 
	end
end

def take_a_number(katz_deli, name)
	katz_deli.push(name)
	place = katz_deli.index(name) + 1
	puts "Welcome, #{name}. You are number #{place} in line."
end

def now_serving(katz_deli)
	if katz_deli.empty?
		puts "There is nobody waiting to be served!"
	else
		serving = katz_deli[0]
		puts "Currently serving #{serving}."
		katz_deli.shift
	end
end