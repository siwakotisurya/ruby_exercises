class Shop

	def initialize
		@item_name = Array.new
	end

	def enter_data
		puts "Welcome to Product Management System\n"
		puts "Enter a to enter product\n"
		puts "Enter b to view product\n"
		puts "Enter c to exit product\n"
		keyboard = gets.chomp
		if keyboard.empty?
			puts "Sorry Enter a to enter products or b to exit from system"
			enter_data
		else 
		if keyboard == "a"
		loop do 
		puts "Enter The Product Name\n"
		get_input = gets.chomp
		@item_name.push(get_input)
		puts "Press a to continue b to view or c to exit\n"

		key = gets.chomp
		if key == "b"
			@item_name.each do |s|
			puts s
			end
		elsif key=="c"
			break
		end

		end
		end
		end
			
	end


end

s = Shop.new

s.enter_data
