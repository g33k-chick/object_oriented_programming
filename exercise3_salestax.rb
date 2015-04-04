class Goods
	def initialize(quantity, name, basic_price)
		@quantity = quantity
		@name = name
		@basic_price = basic_price
		@basic_sales_tax = 0.10
	end
end

class Exempt_Goods < Goods
	def initialize(quantity, name, basic_price)
		super(quantity, name, basic_price)
	end
end

class Import_Goods < Goods
	def initialize(quantity, name, basic_price)
		super(quantity, name, basic_price)
		@import_duty = 0.05
	end
end