class Receipt
	attr_accessor :item :item_price

	def initialize(quantity, name, shelf_price)
		@quantity = quantity
		@item = item
		@shelf_price = shelf_price
	end

	def taxes
		if @item
			total_tax.round(2) = shelf_price * 1.10
		end
	end

	def method_name
		if imported
			total_tax.round(2) = shelf_price * 1.05
		end

	def total
		@item_total = @
	end

	def print_receipt
		"#{@quantity} #{@item} : #{@item_total}"

	end
end

puts "Please enter in items to be purchased:"
input = get.chomp.upcase
input_array = input.split

imported = input_array.include?("imported")
