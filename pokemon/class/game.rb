require_relative 'people'

class Game
	attr_accessor :prof, :player, :npcs

	def initialize(region)
		@prof = Proffesor.new(region)
		@player = Player.new(region)
	end
end