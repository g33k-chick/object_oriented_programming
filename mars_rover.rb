class Plateau
	def initialize(plateau_size)
		@max_x = plateau_size[0]
		@max_y = plateau_size[1]
		@min_x = 0
		@min_y = 0
	end

	def to_s
		puts "The plateau starts at (0,0) with #{@max_x} by #{@max_y}"
	end
end

class Mars_Rover
	def initialize(init_x, init_y, init_direction)
		@x = init_x
		@y = init_y
		@direction = init_direction
	end

	def read_instructions
		puts "Input instructions for the rover"
		instructions = gets.chomp.upcase
		instructions_arry = instructions.split(//)
		instructions_arry.each do |inst|
			if inst == "M"
				move_forward
			elsif inst == "R"
				turn_right
			elsif inst == "L"
				turn_left
			end
		end
	end

	def move_forward
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

puts "Please input the plateau size:"
input_plateau = gets.chomp.split
plateau = Plateau.new(input_plateau)
plateau.to_s

puts "Please input the first rover's coordinates:"
init_rover1 = gets.chomp.split
rover1 = Mars_Rover.new(init_rover1[0].to_i,init_rover1[1].to_i,init_rover1[2].upcase)
rover1.to_s

rover1.read_instructions
rover1.to_s

puts "Please input the second rover's coordinates:"
init_rover2 = gets.chomp.split
rover2 = Mars_Rover.new(init_rover2[0].to_i,init_rover2[1].to_i,init_rover2[2].upcase)
rover2.to_s
rover2.read_instructions
rover2.to_s
