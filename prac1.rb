class Car
	
	attr_writer :backlimit , :frontlimit 

	def backward
		puts "volswagen has back gear limit " + @backlimit
	end

	def forward
		puts "volswagen has front gear limit " + @frontlimit
	end

end

volswagen = Car.new

volswagen.backlimit="40km"

volswagen.frontlimit = "49km"

volswagen.backward

volswagen.forward
