#this is the players class
class Player
	attr_accessor :id, :name, :gender

	#How much players are in the game?
	@@Number_of_players = 0;
	def id
		@id
	end
	def name
		@name
	end
	def gender
		@gender
	end
	
	#Initialize player class by accepting a name argument
	def initialize(region)
		#What region is the player curently in?
		@region  = region
		@id = 1
		@name = "John Doe"
		@gender = "Boy"
	end
end