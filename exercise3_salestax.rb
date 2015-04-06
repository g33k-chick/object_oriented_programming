class Goods
	def initialize(quantity, name, shelf_price)
		@quantity = quantity
		@name = name
		@shelf_price = shelf_price
	end
end

class Goods_With_Taxes < Goods
	def initialize(quantity, name, shelf_price)
		super(quantity, name, shelf_price)
		@sales_tax = 0.10 # 10%
	end
end

class Import_Goods < Goods
	def initialize(quantity, name, shelf_price)
		super(quantity, name, shelf_price)
		@import_duty = 0.05 # 5%
	end
end

puts "Enter in items to be purchased:"
input = get.chomp.upcase
input_array = input.split
