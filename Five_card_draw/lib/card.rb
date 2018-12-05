class Card
    SYMBOLS = ["spade", "club", "heart", "diamond"]
    VALUES = (1..13).to_a
    
    def initialize(symbol, value)
        @symbol = symbol
        @value = value
    end

end