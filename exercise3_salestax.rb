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

	def shopping
		puts "Please enter in item to be purchased:"
		input = get.chomp.upcase
		input_array = input.split
	end

	def add_item
		@quantity = input_array[0].to_i
		if input_array.include?("book") || input_array.include?("chocolate") || input_array.include?("pills")
			tax = false
		else
			tax = true
		end

	end

	def print_receipt
		"#{@quantity} #{@item} : #{@item_total}"

	end
end

imported = input_array.include?("imported")


shopping_receipt = Receipt.new
shopping_receipt.shopping