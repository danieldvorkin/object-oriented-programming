class Rover
	attr_accessor:x, :y, :direction

	def initialize(init_x, init_y, init_direction)
		@x = init_x
		@y = init_y
		@direction = init_direction
	end

	def userInput
		puts "Enter an arrangment of directions for the rover"
		input = gets.chomp
		values = input.split("")

		values.each do |value|
			if value == "l"
				turnLeft
			elsif value == "r"
				turnRight
			elsif value == "m"
				move_forward
			end
		end
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
		if @direction == "N"
			@direction = "E"
		elsif @direction == "E"
			@direction = "S"
		elsif @direction == "S"
			@direction = "W"
		elsif @direction == "W"
			@direction = "N"
		end
	end

	def to_s
		"I am at x:#{@x}, y:#{@y}, facing: #{@direction}"
	end
end

#Start of MAIN


my_rover = Rover.new(1, 1, "N")
puts my_rover
my_rover.userInput
puts my_rover
