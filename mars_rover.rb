class Mars_Rover
	def initialize(init_x, init_y, init_direction)
		@x = init_x
		@y = init_y
		@direction = init_direction
	end

	def read_instructions(user_input)
		user_input.split
	end

	def move_forward(str)
		if @direction == "N"
			@y = @y +1
		elsif @direction == "E"
			@x = @x + 1
		elsif @direction == "S"
			@y = @y - 1
		else
			@x = @x -1
		end
	end

	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E"
		else
			@direction = "N"
		end
	end

	def turn_right
		if @direction == "N"
			@direction = "E"
		elsif @direction == "E"
			@direction = "S"
		elsif @direction == "S"
			@direction = "W"
		else
			@direction = "N"
		end
	end

	def to_s
		puts "I am at #{@x}, #{@y}, facing: #{@direction}"
	end
end

puts "What is the plateau size?"
plateau_size = gets.chomp.split

puts "Input the rover's coordinates"
init_rover1 = gets.chomp.split

#puts "Input instructions for the rover"
#init_instruction = gets.chomp.split(//)

rover1 = Mars_Rover.new(init_rover1[0].to_i,init_rover1[1].to_i,init_rover1[2])
#puts init_rover1
rover1.to_s