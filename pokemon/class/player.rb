#this is the players class
class Player
	attr_accessor :id, :name, :gender, :sur

	#How much players are in the game?
	@@Number_of_players = 0
	
	#Initialize player class by accepting a name argument
	def initialize(region)
		#What region is the player curently in?
		@@region  = region

		# All of these methods will come from a db soon
		# Id number of the curent player
		@id = 1
		# Name of the player
		@name = "John Doe"
		# Gender of the player
		@gender = "Male"
	end
	# Setting gender and surnmae will be dynamic off of the passed in variable
	def set_gender(gender)
		case gender
		when "b" , "m"
			@gender = "Male"
			@sur = "sir"
		when "g" , "f"
			@gender = "Female"
			@sur = "ma'am"
		end
	end
end