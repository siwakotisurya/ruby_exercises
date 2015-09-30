class Validater
	attr_accessor :input
	def input_checker
		if @input.to_i == Fixnum
			puts "You have Entered fixnum right"
		end
	end	
end

v = Validater.new

puts "Enter Any type of variable u like\n"

v.input = gets

v.input_checker



