# A small pokemon program writen in ruby By: James Bernard
require_relative "class/game"

debug = ARGV.shift

system('clear') unless debug == 'debug'

# Lets first start this program by passing the region we want to start in.
region = ARGV.shift

while ($available_regions.include? region) == false do
	typeWords red("Seems you forgot to specify a region to start in please specify one") unless region
	typeWords "We currently have #{green($available_regions)} region(s) available" unless region == ''
	region = STDIN.gets.chomp().to_s
end
# Create new player object
game = Game.new(region);
# This games trainer derives from the games player class
trainer = game.player
# This games proffessor also derives from the games prof class
prof = game.prof

# Greet the player 
prof.say("Hello there welcome to the #{region} region!")

# ask first question of players name
prof.say("Whats your name?")

# What ever he or she responds change the trainers name to it.
trainer.name = STDIN.gets.chomp().to_s

# Response #1 for player
prof.say("Nice to meet you #{red(trainer.name)}!")
# Question #2 for player
prof.say("So #{red(trainer.name)} are you a boy(b) or girl(g)?")

gender = STDIN.gets.chomp().to_s

# While gender is not included in the choices array ask user to chose the propper answer
while (["b", "g"].include? gender) == false do
	prof.say("You chose (#{gender}) which is invalid please choose either b for boy or g for girl")
	gender = STDIN.gets.chomp().to_s
end

# Finally change the players gender to one of the choices
trainer.set_gender(gender);

prof.say("Im am very pleased to meet you #{trainer.sur}")
# Go to the next part of the game
game.nextDay();