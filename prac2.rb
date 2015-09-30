class Products

	def enter=(enter_product)
		@item = enter_product
		puts @item		
	end

	def view
		puts @item
	end

end

enter = Products.new

enter.enter="samosa"

enter.view	
