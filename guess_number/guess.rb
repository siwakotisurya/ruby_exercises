class Test
	attr_accessor :user_input

	def scanner
		number = rand(0..42)
		new_number = number + 5
		user_input = gets.chomp

	end

end

g = Test.new

g.scanner