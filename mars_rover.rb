class Plateau
	def initialize(max_x, max_y)
		@max_x = max_x
		@max_y = max_y
		@min_x = 0
		@min_y = 0
	end

	def ask_plateau
		puts "What is the plateau size?"
		plateau_size = gets.chomp.split
	end
end

class Mars_Rover
	def initialize(init_x, init_y, init_direction)
		@x = init_x
		@y = init_y
		@direction = init_direction
	end

	def ask_for_instructions
	end

	def read_instructions(instructions)
		instructions1.each do |x|
		if x == "M"
			move_forward
		elsif x == "R"
			turn_right
		elsif x == "L"
			turn_left
		else
		end
	end
		puts "Input the rover's coordinates"
		rover1 = gets.chomp.split
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

plateau.ask_plateau

puts "Input the rover's coordinates"
init_rover1 = gets.chomp.split

puts "Input instructions for the rover"
instructions1 = gets.chomp.upcase
instructions1.split(//)

rover1 = Mars_Rover.new(init_rover1[0].to_i,init_rover1[1].to_i,init_rover1[2].upcase)
rover1.to_s

rover1.read_instructions(instructions1)

rover1.to_s
