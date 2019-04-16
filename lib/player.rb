class Player

	attr_accessor :name, :life_point

	def initialize(player_name)
		@name = player_name
		@life_point = 10
	end

	def show_state
		puts "#{@name} a encore #{life_point} de vie !"
	end

	def gets_damage(hit)
		@life_point = @life_point - hit

		if life_point <= 0
			if @name == "josé"
			puts "Bing #{@name} ! t'es mort mon salaud !"
			else
			puts "Bing #{@name} ! t'es down ma salope !"
			end
		end
	end

	def attacks(player2)

		puts "#{@name} attaque violemment #{player2.name} !" 
		
		hit = compute_damage

		puts "#{@name} lui inflige #{hit} points de dommage!"

		player2.gets_damage(hit)
	end

	def compute_damage
		
		return rand(1..6)
	end

end
