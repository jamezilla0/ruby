# Words will recieve a type writer animation unless user escapes with ' key
def typeWords(words, append = false)
	# First incriment is 1
	i = 1
	# Last character of a word is the length of the word itself
	last_char = words.length
	# For each character of a word pass it in as char variable
	words.each_char do |char|
		# Then print the character if we are  not at the last char or we need to append
		print char if i < last_char || append
		# put string of char if we are at the last char and we dont need to apend
		puts char if i >= last_char && append == false
		
		return true if i == last_char
		  system("stty raw -echo")
		  char = STDIN.read_nonblock(1) rescue nil
		  system("stty -raw echo")
		if /'/i =~ char
			STDOUT.flush
			print "\r"
			print words if append
			puts words unless append
			break
		end
		i += 1
		sleep_time = rand(0.02..0.1)
		sleep(sleep_time)
	end
end

# We have pausing dots under ani
def pausingDots(append = false)
	dots = '.' * rand(0...10)
	typeWords(dots, append)
end