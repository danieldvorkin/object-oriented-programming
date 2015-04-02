class Rover
	attr_accessor:x, :y, :direction

	def initialize(init_x, init_y, init_direction)
		@x = init_x
		@y = init_y
		@direction = init_direction
	end

	def move

	end

	def turnLeft

	end

	def turnRight

	end

	def to_s
		"I am at #{@x}, #{@y}, facing: #{@direction}"
	end
end

my_rover = Rover.new(2, 2, "N")
puts my_rover