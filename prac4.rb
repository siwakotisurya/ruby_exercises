class Game

	def user_enter
		puts "Lets play a Game Who You Are\n"
		puts "Guess Number Between 1 to 5\n"
		puts "Ok.......Take Your Time..........\n Now Enter The number"
		user_enter = gets.to_i
		check(user_enter)
	end 

	def check(user_enter)
		case user_enter

		when 1
			puts "You  are Ruby Programmer"
		when 2
			puts "You are java Programmer"
		when 3
			puts "you are Iphone app developer"
		when 4
			puts "You are android app developer"
		when 5 
			puts "You are .net programmer"
		else
			puts "enter the number between 1 to 5"
		end	
	end

end


g = Game.new

g.user_enter