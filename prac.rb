class Student
	attr_accessor :first_name, :last_name, :address, :phone_number

	def details
		puts "Hello Student Your first name is #{first_name}\n"
		puts "Hello Student Your last name is #{@last_name}\n"
		puts "Hello Student Your last name is #{@address}\n"
		puts "Hello Student Your last name is #{@phone_number}\n"
	end
end

std = Student.new

std.first_name="surya"
std.last_name="siwakoti"
std.address="chabahil"
std.phone_number="9999999"

std.details

