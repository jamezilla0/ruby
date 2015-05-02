# We will need json down the road for some file based data
require 'json'
# We need object construct so that we can make objects
require 'ostruct'
# Pass in configurations for the game
require_relative '../config.rb'
# Get all the helpers
require_relative '../helpers/_all'
# Any game needs peoples so lets import them
require_relative 'people'
# Our game class
class Game
	# Attributes that we will need
	attr_accessor :prof, :player, :npcs
	# Lets start the game by passing in the "region" cartage
	def initialize(region)
		# Global variables
		@@day = 0 # => the game always starts off at 0 days

		# Instance variables
		@prof = Proffesor.new(region) # => Like any pokemon game we need a proffesor to help us through out
		@player = Player.new(region) # => Finaly we create the player as a new Player class
	end
	# Our database function (for now in this version we will pass in a dynamic name for pulling a j relative son file)
	def db(name)
		#Data location for the game
		data = "#{Dir.pwd}/pokemon/data/"
		# Return file name + .json ext
		"#{data}#{name}.json"
	end
	# When ever we need the game to pass a message to the user lets user this alert function
	def alert(msg)
		# We will use our typeWords animation to do this
		typeWords(msg)
	end
	# When ever the game needs to switch to the next day we can call this function
	def nextDay()
		# wait till the pausing dots are done
		sleep(2) until pausingDots(true)
		# Clear the terminal
		system('clear')
		# \r is regex for start of line
		print "\r"
		# Incriment the number of days by 1
		@@day += 1
		# Finally we can animate the message
		typeWords("The very next day")
	end
end