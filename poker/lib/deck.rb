require_relative "card"

class Deck
    attr_reader :deck 

    def initialize
        @deck = []
        suits = [:spade, :heart, :diamond, :club]
        (2..14).each do |value|
            suits.each do |suit|
                card = Card.new(suit, value)
                @deck << card
            end
        end
    end
end

# d = Deck.new
# p d