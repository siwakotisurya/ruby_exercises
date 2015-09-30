require "./full_name_class.rb"
require "./address_class.rb"
require "./phone_class.rb"
require "./skype_class.rb"

class AddressBook

	def handler
		user_address = Address.new
		
	end

end

puts "-"*140 + "\n"*2
puts "+"*50 + "Welcome To Address Book Management System" + "+"*50+ "\n"*2
puts "*"*10 + "Press 1 to Enter a new record".upcase
puts "*"*10 + "Press 2 to View All record".upcase
puts "*"*10 + "Press 3 to Search record\n\n".upcase

