require 'rspec'
require 'deck'



describe "initialize" do
    subject deck = Deck.new
    it "returns a deck of 52 cards" do
        expect(deck.length).to eq(52)
    end

    it "has only four symbols" do
        deck.each do |card|
            
            
        expect(deck[0]).to eq([5, 3, 2, 1])
    end

    it "has only 13 values" 
end