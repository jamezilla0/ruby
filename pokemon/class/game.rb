require 'json'
require 'ostruct'
require_relative 'people'

class Game
	attr_accessor :prof, :player, :npcs

	def initialize(region)
		@prof = Proffesor.new(region)
		@player = Player.new(region)
	end

	def db(name)
		#Data location for the game
		data = "#{Dir.pwd}/pokemon/data/"

		"#{data}#{name}.json"
	end
end