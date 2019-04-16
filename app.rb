require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("josiane")
player2 = Player.new("josé")

puts "\n\n\Bienvenue #{player1.name} et #{player2.name} dans ce PUBG version console!\n\n"

puts "==============================================================\n\n"

puts " #{player1.show_state} #{player2.show_state}"

puts "Round 1 : Fight !\n\n"
player1.attacks(player2)

puts "\nRound 2 : Fight / José ne compte pas en rester la : FIGHT !!!\n\n"
player2.attacks(player1)

puts "\n\n#{player1.show_state}  #{player2.show_state}"

puts "=============================================================="


while player1.life_point > 0 && player2.life_point > 0

		player1.attacks(player2) 

		if player2.life_point <= 0
			break
		end
		player2.attacks(player1) 
		
		if player1.life_point <= 0
			break
		end
			
		puts "#{player1.show_state} #{player2.show_state}\n\n"

end