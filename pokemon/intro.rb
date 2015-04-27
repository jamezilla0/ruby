# A small pokemon program writen in ruby By: James Bernard
require_relative "class/game"

# Lets first start this program by passing the region we want to start in.
region = ARGV[0]

# Create new player object
game = Game.new(region);

trainer = game.player
prof = game.prof

# Greet the player 
prof.say("Hello there welcome to the #{region} region!")

# ask first question of players name
prof.say("Whats your name?")

# What ever he or she responds change the trainers name to it.
trainer.name = STDIN.gets.chomp().to_s

# Response #1 for player
prof.say("Nice to meet you #{trainer.name}")
# Question #2 for player
prof.say("So #{trainer.name} are you a boy(b) or girl(g)?")

gender = STDIN.gets.chomp().to_s

# While gender is not included in the choices array ask user to chose the propper answer
while (["b", "g"].include? gender) == false do
	prof.say("You chose (#{gender}) which is invalid please choose either b for boy or g for girl")
	gender = STDIN.gets.chomp().to_s
end

case gender
when "b"
	gender = "Male"
	ref = "sir"
when "g"
	gender = "Female"
	ref = "ma'am"
end

trainer.gender = gender;

prof.say("Im am very pleased to meet you #{ref}")
