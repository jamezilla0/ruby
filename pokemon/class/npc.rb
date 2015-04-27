class Npc
attr_accessor :name

	def initialize(region)
	end

	def say (msg)
		puts "#{@name}: #{msg}";
	end
end

class Proffesor < Npc

	attr_accessor :name

	def initialize(region)
		case region
		when "Kanto"
			@name = "Oak"
		end
	end
end