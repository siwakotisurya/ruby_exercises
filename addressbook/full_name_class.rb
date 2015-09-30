class Address
	attr_accessor :first_name, :last_name

	def initialize 
		@address = Hash.new
	end

	def first_name
		@address["first_name"]= @first_name
	end

	def last_name
		@address["last name"]= @last_name
	end

end



