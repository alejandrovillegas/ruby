

class Card
	attr_reader :suit, :value

	def initialize(suit, value)
		@suit = suit
		@value = value
	end

	def value
		return 10 if ["J", "Q", "K"].include?(@value)
		return 11 if @value == "A"
		return @value
	end

	def to_s
		"#{@value}-#{@suit}"
	end
end

class Deck
	attr_reader :cards

	def initialize
		@cards= []
		build_cards
	end	

	def take!
		@cards.shift
	end

	private
		def build_cards
			[:clubs, :diamonds, :spades, :hearts].each do |suit|
			(2..10).each do |number|
				@cards << Card.new(suit, number)
			end
			["J","Q","K","A"].each do |face|
				@cards << Card.new(suit, face)	   	
			end
		end
		@cards.shuffle!
	end	
end

class Hand
	attr_reader :cards

	def initialize(deck)
		@deck = deck
		@cards = []
	end

	def hit!
		@cards << @deck.take!
	end

	def value
		val = 0
		@cards.each do |card|
			val += card.value
		end
		val
	end

	def to_s
		str = ""
		@cards.each do |card|
			str += "#{card}    "
		end
		str.strip
	end
end


deck = Deck.new
dealer = Hand.new(deck)
player = Hand.new(deck)


player.hit!
player.hit!
dealer.hit!

puts "Repartidor:  #{dealer}"
puts "Jugador:     #{player}"

puts "tu turno"

while player.value < 21
	print "   carta(C) o plantas(P)?  "
	option = gets.chomp

	if option == "C"
		player.hit!
		puts " #{player}  "
	elsif option == "P"
		break
	end
end



puts "!!!!!!!!!!!!!!!! #{player}"








