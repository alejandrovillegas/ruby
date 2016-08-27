

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
				@Cards << Card.new(suit, number)
			end
			["J","Q","K","A"].each do |face|
				@Cards << Card.new(suit, face)	   	
			end
		end
		@Cards.shuffle!
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
	end
end

deck = Deck.new
hand = Hand.new(deck)

