require "yaml"
class AddressBook
	
	attr_writer :first_name, :last_name, :mobile_number, :email, :skype_id

	def initialize 
		@new_contact = Array.new
	end

	def save
		contact = Hash.new
		contact[:first_name] = @first_name
		contact[:last_name]=@last_name
		contact[:mobile_number] = @mobile_number
		contact[:email] = @email
		address = {:details=>contact}
		con = @new_contact.push(address)
		check =  File.open("database.yml", 'w') { |f| YAML.dump(con, f) }
		if check
			puts "Record Added Sucessfully"
		end
	end

	def show
		data = YAML.load_file('database.yml')
		data.each do |s|
			s.select do |key, v|
				puts "-"*20+"First Name    "+v[:first_name]+"-"*20
				puts "-"*20+"last Name     "+v[:last_name]+"-"*20
				puts "-"*20+"Email Address "+v[:email]+"-"*20
				puts "-"*20+"Mobile Number "+v[:mobile_number]+"-"*20+"\n\n"
			end
		end
	end

	def search(value)
		data = YAML.load_file('database.yml')
		data.each do |s|
			s.select do |key, v|
				if value == v[:first_name] 
					puts "search keyword for #{value} is below"
					puts "$"*80
					puts "-"*20+"First Name    "+v[:first_name]+"-"*20
					puts "-"*20+"last Name     "+v[:last_name]+"-"*20
					puts "-"*20+"Email Address "+v[:email]+"-"*20
					puts "-"*20+"Mobile Number "+v[:mobile_number]+"-"*20
				end
			end
		end
	end

	def update

	end

end

book = AddressBook.new

exit = true

while exit
	puts "-"*140 + "\n"*2
	puts "+"*50 + "Welcome To Address Book Management System" + "+"*50+ "\n"*2
	puts "*"*10 + "Press 1 to Enter a new record".upcase
	puts "*"*10 + "Press 2 to View All record".upcase
	puts "*"*10 + "Press 3 to Search record\n".upcase
	choice = gets.chomp

	case choice.to_i 
	when 1
		puts "+"*10+"Enter user first name"+"+"*10
		book.first_name = gets.chomp
		puts "+"*10+"Enter user last name"+"+"*10
		book.last_name = gets.chomp
		puts "+"*10+"Enter user mobile number"+"+"*10
		book.mobile_number = gets.chomp
		puts "+"*10+"Enter user email address"+"+"*10
		book.email = gets.chomp
		book.save
		puts "OK ..Press 1 to continue or 2 to go main menu"+"+"*10
		user_input = gets.chomp.to_i
		if user_input == 2
			exit = true
		end
	when 2
		book.show
	when 3
		puts "Enter email id or name or skype id to search\n"
		value = gets.chomp
		book.search(value)
	when 4
		book.update
	end
end



