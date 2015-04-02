class Rover
	attr_accessor:x, :y, :direction

	def initialize(init_x, init_y, init_direction)
		@x = init_x
		@y = init_y
		@direction = init_direction
	end

	def move_forward
		if @direction == "N"
			@y += 1
		elsif @direction == "W"
			@x -= 1
		elsif @direction == "S"
			@y -= 1
		elsif @direction == "E"
			@x += 1
		end
	end

	def turnLeft
		if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "E"
			@direction = "N"
		end
	end

	def turnRight

	end

	def to_s
		"I am at x:#{@x}, y:#{@y}, facing: #{@direction}"
	end
end

my_rover = Rover.new(2, 2, "N")
puts my_rover
my_rover.turnLeft
puts my_rover
