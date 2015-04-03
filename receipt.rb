class Reciept

	attr_accessor :qty, :item, :price

	def initialize(qty, item, price)
		@qty = qty
		@item = item
		@price = price
		@total = 0
	end

	def tax_calc
		if item == "book" or "food" or "meds"
			@total = @qty * @price
		else
			@total = (@qty * @price) * 1.10
		end
	end

	def display
		puts "#{@qty} #{@item} : #{@price}"
		puts "The total is: #{@total}"
	end
end

goods = Reciept.new(1, "book", 12.49)
goods.tax_calc
goods1 = Reciept.new(2, "meds", 14.99)
goods1.tax_calc
goods.display
goods1.display
