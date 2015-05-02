# Every game needs a non playable char
class Npc
	# The atributes we need 
	attr_accessor :name
	# what ever is region dependent goes here at the start
	def initialize(region)
	end
	# All npcs have a voice so what ever we need it to say is passed here
	def say (msg)
		# First prepend the name of the npc before the words are typed
		print green("#{@name}: ")
		# Call the typeWords animation append true
		typeWords(msg, true)
		# Add pausing dots after each sentence
		pausingDots
	end
end
# Each proffesor is an npc
class Proffesor < Npc
	#doubt I need to call this twice but for now lets be safe
	attr_accessor :name
	# Since a proffersor is its own npc we need to change somethings based off the current region
	def initialize(region)
		case region
		when "Kanto"
			# Name of proffersor
			@name = "Oak"
			# Starter pokemon to choose from
			@starter_pokemon = ['Charmander', 'Squirtle', 'Bulbasaur']
		end
	end
end