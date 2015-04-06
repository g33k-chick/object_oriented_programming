class Goods
	def initialize(quantity, name, shelf_price)
		@quantity = quantity
		@name = name
		@shelf_price = shelf_price
		@shelf_sales_tax = 0.10
	end
end

class Exempt_Goods < Goods
	def initialize(quantity, name, shelf_price)
		super(quantity, name, shelf_price)
	end
end

class Import_Goods < Goods
	def initialize(quantity, name, shelf_price)
		super(quantity, name, shelf_price)
		@import_duty = 0.05
	end
end

puts "Enter in items to be purchased:"
input = get.chomp.upcase
input_array = input.split
