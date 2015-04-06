class Product

	attr_accessor :name, :price, :taxed

	def initialize(name, price, taxed=false)
		@name = name
		@price = price
		@taxed = taxed
	end

	def total 
		if @taxed
			@price
		else
			@price * 1.13
		end
	end
end

class Cart

	def initialize
		@products = []
	end

	def add_product(product)
		@products << product
	end

	def total
		sum = 0
		@products.each do |product|
			sum += if product.taxed
				product.price * 1.13
			else
				product.price
			end
		end
		puts sum
	end
end

die_hard = Product.new("Die Hard DVD", 9.99)
interstellar = Product.new("Interstellar", 17.99, true)
@cart = Cart.new
@cart.add_product(die_hard)
@cart.add_product(interstellar)
@cart.total







# class Reciept

# 	attr_accessor :qty, :item, :price

# 	def initialize(qty, item, price)
# 		@qty = qty
# 		@item = item
# 		@price = price
# 		@total = 0
# 	end

# 	def tax_calc
# 		if item == "book" or "food" or "meds"
# 			@total = @qty * @price
# 		else
# 			@total = (@qty * @price) * 1.10
# 		end
# 	end

# 	def display
# 		puts "#{@qty} #{@item} : #{@price}"
# 		puts "The total is: #{@total}"
# 	end
# end

# goods = Reciept.new(1, "book", 12.49)
# goods.tax_calc
# goods1 = Reciept.new(2, "meds", 14.99)
# goods1.tax_calc
# goods.display
# goods1.display
