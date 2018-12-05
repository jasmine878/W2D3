require_relative 'card'

class Deck
    attr_accessor :deck
    def initialize
        @deck = []
        populate_deck
    end

    private
    def populate_deck
        SYMBOLS.each do |sym|
            VALUES.each do |val|
                self.deck << Card.new(sym, val)
            end
        end
        deck
    end

end