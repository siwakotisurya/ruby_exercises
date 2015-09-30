class Calculator

	def initialize(a, b)
	@first_num = a
	@second_num = b
	end

	def addition
		result = @first_num+@second_num
		puts "addition of number #{@first_num} and #{@second_num} id : #{result}" + result.to_s

	end

	def subtraction
		result = @first_num - @second_num
		puts "subtraction of number #{@first_num} and #{@second_num} id :" + result.to_s
	end

end

calculate = Calculator.new(45, 35)

calculate.addition

calculate.subtraction